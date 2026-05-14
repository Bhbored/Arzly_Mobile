// services/location_service.dart
import 'package:arzly/core/network/dio_instances/google_map/location_getter_client.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/other_clients/google_map/models/place_details_result.dart';
import 'package:arzly/core/network/other_clients/google_map/models/place_result.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@Riverpod(keepAlive: true)
LocationService locationService(Ref ref) {
  final client = ref.read(locationGetterClientProvider);
  final executor = ref.read(executorProvider(client.dio));
  return LocationService(dio: client.dio, executor: executor);
}

class LocationService {
  final Dio dio;
  final ApiExecutor executor;
  LocationService({required this.dio, required this.executor});

  final _logger = Logger();

  Future<List<PlaceResult>> autocomplete(String input) async {
    if (input.trim().length < 2) return [];

    final response = await executor.execute(
      ApiRequest(
        path: '/api/location/autocomplete',
        method: HttpMethod.get,
        queryParams: {'input': input},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final list = data as List<dynamic>;
          return list
              .map((json) => PlaceResult.fromJson(json as Map<String, dynamic>))
              .toList();
        } catch (e) {
          _logger.e('Failed to parse autocomplete results: $e');
          return [];
        }
      },
      failure: (error, statusCode) {
        _logger.e('Autocomplete failed: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<PlaceDetailsResult> getPlaceDetails(String placeId) async {
    final response = await executor.execute(
      ApiRequest(
        path: '/api/location/place-details',
        method: HttpMethod.get,
        queryParams: {'placeId': placeId},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          return PlaceDetailsResult.fromJson(data as Map<String, dynamic>);
        } catch (e) {
          _logger.e('Failed to parse place details: $e');
          throw Exception('Failed to parse place details');
        }
      },
      failure: (error, statusCode) {
        _logger.e('Place details failed: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<PlaceDetailsResult> reverseGeocode(double lat, double lng) async {
    final response = await executor.execute(
      ApiRequest(
        path: '/api/location/reverse-geocode',
        method: HttpMethod.get,
        queryParams: {'lat': lat, 'lng': lng},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          return PlaceDetailsResult.fromJson(data as Map<String, dynamic>);
        } catch (e) {
          _logger.e('Failed to parse reverse geocode result: $e');
          throw Exception('Failed to parse location');
        }
      },
      failure: (error, statusCode) {
        _logger.e('Reverse geocode failed: ${error.userMessage}');
        throw error;
      },
    );
  }
}
