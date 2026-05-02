import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dio_config.freezed.dart';

@freezed
sealed class DioConfig with _$DioConfig {
  const factory DioConfig({
    required String baseUrl,
    @Default('') String apiKey,
    @Default(true) bool enableLogging,
    @Default(Duration(seconds: 10)) Duration connectTimeout,
    @Default(Duration(seconds: 15)) Duration receiveTimeout,
    @Default(Duration(seconds: 30)) Duration sendTimeout,
    @Default(Headers.jsonContentType) String contentType,
    @Default(ResponseType.json) ResponseType responseType,
    @Default('application/json') String acceptHeader,
    @Default('1.0.0') String clientVersion,
  }) = _DioConfig;
}
