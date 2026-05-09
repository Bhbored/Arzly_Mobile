import 'package:arzly/core/exceptions/location_getter_exceptions.dart';
import 'package:location/location.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export '../exceptions/location_getter_exceptions.dart';
part 'location_getter.g.dart';

@Riverpod(keepAlive: true)
LocationGetter locationGetter(Ref ref) {
  return LocationGetter();
}

class LocationGetter {
  LocationGetter({Logger? logger}) : _log = logger ?? Logger();

  final Logger _log;

  Future<LocationData> getCurrentLocation() async {
    final location = Location();

    try {
      var serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          throw LocationServiceDisabledException();
        }
      }

      var permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied ||
          permissionGranted == PermissionStatus.deniedForever) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted &&
            permissionGranted != PermissionStatus.grantedLimited) {
          if (permissionGranted == PermissionStatus.deniedForever) {
            throw LocationPermissionDeniedForeverException();
          }
          throw LocationPermissionDeniedException();
        }
      }

      final locationData = await location.getLocation().timeout(
        const Duration(seconds: 5),
        onTimeout: () => throw LocationTimeoutException(),
      );

      if (locationData.latitude == null || locationData.longitude == null) {
        throw LocationCoordinatesMissingException();
      }

      _log.i(
        'Location acquired: lat=${locationData.latitude}, lon=${locationData.longitude}',
      );
      return locationData;
    } on LocationGetterException {
      rethrow;
    } catch (e, st) {
      _log.e('Failed to get location', error: e, stackTrace: st);
      throw LocationFailureException('Failed to get location: $e', e);
    }
  }

  Future<LocationData?> getLocationWithFallback() async {
    try {
      return await getCurrentLocation();
    } on LocationGetterException catch (e, st) {
      _log.w('Current location unavailable: $e', stackTrace: st);

      try {
        final location = Location();
        final lastLocation = await location.getLocation();
        if (lastLocation.latitude != null && lastLocation.longitude != null) {
          _log.i('Using last known location from cache');
          return lastLocation;
        }
        _log.w('Last known location had no coordinates');
      } on LocationGetterException catch (e2, st2) {
        _log.w('Fallback location failed: $e2', stackTrace: st2);
      } catch (e2, st2) {
        _log.w('Fallback location failed', error: e2, stackTrace: st2);
      }

      return null;
    }
  }

  Future<bool> isLocationAvailable() async {
    try {
      final location = Location();
      final serviceEnabled = await location.serviceEnabled();
      final permission = await location.hasPermission();

      return serviceEnabled &&
          (permission == PermissionStatus.granted ||
              permission == PermissionStatus.grantedLimited);
    } catch (e, st) {
      _log.d('isLocationAvailable check failed: $e', stackTrace: st);
      return false;
    }
  }
}
