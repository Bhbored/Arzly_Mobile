sealed class LocationGetterException implements Exception {
  LocationGetterException(this.message);
  final String message;

  @override
  String toString() => message;
}

final class LocationServiceDisabledException extends LocationGetterException {
  LocationServiceDisabledException()
      : super(
          'Location services are disabled. Please enable them in device settings.',
        );
}

final class LocationPermissionDeniedException extends LocationGetterException {
  LocationPermissionDeniedException()
      : super('Location permission is required to use this feature.');
}

final class LocationPermissionDeniedForeverException
    extends LocationGetterException {
  LocationPermissionDeniedForeverException()
      : super(
          'Location permission is permanently denied. Enable it in app settings.',
        );
}

final class LocationTimeoutException extends LocationGetterException {
  LocationTimeoutException()
      : super(
          'Location request timed out. Check GPS or try again in an open area.',
        );
}

final class LocationCoordinatesMissingException extends LocationGetterException {
  LocationCoordinatesMissingException()
      : super('Could not retrieve valid location coordinates.');
}

final class LocationFailureException extends LocationGetterException {
  LocationFailureException(super.message, [this.cause]);
  final Object? cause;
}
