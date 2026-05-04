import 'package:arzly/core/network/config/dio_config.dart';
import 'package:arzly/core/network/interceptors/retry_interceptor.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dio_client.g.dart';

@Riverpod(keepAlive: true)
DioClient baseClient(Ref ref, String path) {
  final listingConfig = DioConfig(baseUrl: 'http://10.0.2.2:5215/arzly/$path');
  return DioClient(
    config: listingConfig.copyWith(
      baseUrl: 'http://10.0.2.2:5215/arzly/$path',
      headers: {
        'Accept': listingConfig.acceptHeader,
        'X-Client-Version': listingConfig.clientVersion,
      },
    ),
  );
}

class DioClient {
  final DioConfig config;
  late final Dio dio;

  DioClient({required this.config}) {
    dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: config.connectTimeout,
        receiveTimeout: config.receiveTimeout,
        sendTimeout: config.sendTimeout,
        contentType: config.contentType,
        responseType: config.responseType,
        headers: config.headers,
      ),
    );

    // dio.interceptors.add(AuthInterceptor());
    dio.interceptors.add(RetryInterceptor(dio: dio, maxRetries: 3));

    if (config.enableLogging) {
      dio.interceptors.add(
        AwesomeDioInterceptor(
          logRequestHeaders: true,

          logResponseHeaders: true,
          logRequestTimeout: true,
        ),
      );
    }
  }
}
