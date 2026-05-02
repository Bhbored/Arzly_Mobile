import 'package:arzly/core/utils/http_method.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_request.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiRequest<T> with _$ApiRequest<T> {
  const factory ApiRequest({
    required String path,
    required HttpMethod method,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) = _ApiRequest<T>;
}
