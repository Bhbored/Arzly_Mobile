import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/dio_instances/pickup_location/pickup_location_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/storage/secure_storage/secure_storage_android.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:arzly/data/dtos/request/pickup_location/pickup_location_add_request.dart';
import 'package:arzly/data/dtos/request/pickup_location/pickup_location_update_request.dart';
import 'package:arzly/data/dtos/response/pickup_location/pickup_location_response.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pickup_location_repo.g.dart';

@Riverpod(keepAlive: true)
PickupLocationRepo pickupLocationRepo(Ref ref) {
  final client = ref.read(pickupLocationClientProvider);
  final executor = ref.read(executorProvider(client.dio));
  final secureStorageAndroid = ref.read(secureStorageAndroidProvider);
  return PickupLocationRepo(
    executor: executor,
    secureStorageAndroid: secureStorageAndroid,
  );
}

class PickupLocationRepo {
  final ApiExecutor executor;
  final _logger = Logger();
  final SecureStorageAndroid secureStorageAndroid;
  PickupLocationRepo({
    required this.executor,
    required this.secureStorageAndroid,
  });
  Future<String?> getUserId() async {
    final userId = await secureStorageAndroid.getValue('firebaseId');
    if (userId == null) {
      throw ApiException(
        userMessage: ApiErrors.unauthorized,
        error: 'User ID not found',
        originalError: null,
      );
    }
    return userId;
  }

  Future<List<PickupLocationResponse>> getUserLocationsAsync() async {
    final userId = await getUserId();
    final response = await executor.execute(
      ApiRequest(
        path: '/user-locations',
        method: HttpMethod.get,
        headers: {'firebaseId': userId},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final locations = rawList
              .map((json) => PickupLocationResponse.fromJson(json))
              .toList();
          _logger.i('Fetched ${locations.length} pickup locations');
          return locations;
        } catch (e) {
          _logger.e('Failed to parse pickup location data');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse pickup location data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch pickup locations: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<void> addPickupLocation(PickupLocationAddRequest request) async {
    final userId = await getUserId();
    final response = await executor.execute(
      ApiRequest(
        path: '/Create',
        method: HttpMethod.post,
        data: request.toJson(),
        headers: {'firebaseId': userId},
      ),
    );

    response.when(
      success: (data, statusCode, meta) {
        _logger.i('Pickup location created: $data');
      },
      failure: (error, statusCode) {
        _logger.e('Failed to add pickup location: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<PickupLocationResponse> updatePickupLocation(
    PickupLocationUpdateRequest request,
  ) async {
    final userId = await getUserId();
    final response = await executor.execute(
      ApiRequest(
        path: '/Update/${request.id}',
        method: HttpMethod.put,
        data: request.toJson(),
        headers: {'firebaseId': userId},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final updated = PickupLocationResponse.fromJson(data);
          _logger.i('Updated pickup location ${updated.id}');
          return updated;
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse pickup location data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to update pickup location: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<bool> deletePickupLocation(String id) async {
    final userId = await getUserId();
    final response = await executor.execute(
      ApiRequest(
        path: '/delete/$id',
        method: HttpMethod.delete,
        headers: {'firebaseId': userId},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          _logger.i('Deleted pickup location $id');
          return true;
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to delete pickup location',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to delete pickup location: ${error.userMessage}');
        throw error;
      },
    );
  }
}
