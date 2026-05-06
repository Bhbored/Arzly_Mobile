import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/network/response/api_response.dart';
import 'package:arzly/core/utils/http_extension.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_executor.g.dart';

@Riverpod(keepAlive: true)
ApiExecutor executor(Ref ref, Dio instance) {
  return ApiExecutor(instance);
}

class ApiExecutor {
  final Dio _dio;

  const ApiExecutor(this._dio);

  Future<ApiResponse<T>> execute<T>(ApiRequest<T> request) async {
    try {
      final options = (request.options ?? Options()).copyWith(
        method: request.method.value,
        headers: {...?request.headers},
      );

      final response = await _dio.request(
        request.path,
        data: request.data,
        queryParameters: request.queryParams,
        options: options,
        onSendProgress: request.onSendProgress,
        onReceiveProgress: request.onReceiveProgress,
      );

      return ApiResponse.success(
        data: response.data,
        statusCode: response.statusCode,
        meta: response.data is Map ? response.data['meta'] : null,
      );
    } on DioException catch (e) {
      return ApiResponse.failure(
        error: _mapDioException(e),
        statusCode: e.response?.statusCode,
      );
    } catch (e, stack) {
      return ApiResponse.failure(
        error: ApiException(
          userMessage: ApiErrors.unknown,
          error: 'Unexpected error: $e',
          originalError: stack,
        ),
      );
    }
  }

  ApiException _mapDioException(DioException e) {
    final status = e.response?.statusCode;

    // Status code specific
    if (status == 401) {
      return ApiException(
        userMessage: ApiErrors.unauthorized,
        error: 'Session expired. Please log in again.',
        statusCode: status,
        originalError: e,
      );
    }
    if (status == 404) {
      return ApiException(
        userMessage: ApiErrors.notFound,
        error: 'Resource not found.',
        statusCode: status,
        originalError: e,
      );
    }
    if (status != null && status >= 500) {
      return ApiException(
        userMessage: ApiErrors.serverError,
        error: 'Server error occurred. Please try again later.',
        statusCode: status,
        originalError: e,
      );
    }

    // DioExceptionType mapping
    return switch (e.type) {
      DioExceptionType.connectionTimeout => ApiException(
        userMessage: ApiErrors.requestTimeout,
        error: 'Connection timed out. Please check your internet.',
        statusCode: status,
        originalError: e,
      ),
      DioExceptionType.receiveTimeout => ApiException(
        userMessage: ApiErrors.requestTimeout,
        error: 'Server took too long to respond.',
        statusCode: status,
        originalError: e,
      ),
      DioExceptionType.sendTimeout => ApiException(
        userMessage: ApiErrors.sendTimeout,
        error: 'Request timed out while sending data.',
        statusCode: status,
        originalError: e,
      ),
      DioExceptionType.cancel => ApiException(
        userMessage: ApiErrors.cancelled,
        error: 'Request was cancelled.',
        statusCode: status,
        originalError: e,
      ),
      DioExceptionType.badCertificate => ApiException(
        userMessage: ApiErrors.certificateFailed,
        error: 'Secure connection failed.',
        statusCode: status,
        originalError: e,
      ),
      DioExceptionType.connectionError => ApiException(
        userMessage: ApiErrors.connectionFailed,
        error: 'No internet connection.',
        statusCode: status,
        originalError: e,
      ),
      DioExceptionType.badResponse => ApiException(
        userMessage: ApiErrors.badResponse,
        error: 'Invalid response from server.',
        statusCode: status,
        originalError: e,
      ),
      DioExceptionType.unknown => ApiException(
        userMessage: ApiErrors.unknown,
        error: e.message ?? 'An unexpected error occurred.',
        statusCode: status,
        originalError: e,
      ),
    };
  }
}
