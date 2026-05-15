import 'dart:io';
import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/dio_instances/image_uploader/image_uploader_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/storage/secure_storage/secure_storage_android.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:dio/dio.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_upload_service.g.dart';

@Riverpod(keepAlive: true)
ImageUploadHelper imageUploadHelper(Ref ref) {
  final client = ref.read(imageUploaderClientProvider);
  final executor = ref.read(executorProvider(client.dio));
  final secureStorageAndroid = ref.read(secureStorageAndroidProvider);
  return ImageUploadHelper(
    dio: client.dio,
    executor: executor,
    secureStorageAndroid: secureStorageAndroid,
  );
}

class ImageUploadHelper {
  final Dio dio;
  final ApiExecutor executor;
  final SecureStorageAndroid secureStorageAndroid;
  ImageUploadHelper({
    required this.dio,
    required this.executor,
    required this.secureStorageAndroid,
  });
  final _logger = Logger();
  Future<String?> uploadImage(File file) async {
    final userId = await secureStorageAndroid.getValue('firebaseId');
    if (userId == null) {
      throw ApiException(
        userMessage: ApiErrors.unauthorized,
        error: 'User ID not found',
        originalError: null,
      );
    }
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path),
    });
    final response = await executor.execute(
      ApiRequest(
        path: '/upload-image',
        method: HttpMethod.post,
        data: formData,
        headers: {'firebaseId': userId},
      ),
    );
    return response.when(
      success: (data, statusCode, meta) {
        try {
          final imageUrl = data['imageUrl'] as String;
          return imageUrl;
        } catch (e) {
          _logger.e('Failed to parse image url: $e');
          return null;
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to upload image: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<List<String>> uploadImages(List<File> files) async {
    final userId = await secureStorageAndroid.getValue('firebaseId');
    if (userId == null) {
      throw ApiException(
        userMessage: ApiErrors.unauthorized,
        error: 'User ID not found',
        originalError: null,
      );
    }
    final formData = FormData.fromMap({
      'files': files.map((f) => MultipartFile.fromFileSync(f.path)).toList(),
    });

    final response = await executor.execute(
      ApiRequest(
        path: '/upload-images',
        method: HttpMethod.post,
        data: formData,
        headers: {'firebaseId': userId},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final urls = (data['imageUrls'] as List)
              .map((u) => u.toString())
              .toList();
          return urls;
        } catch (e) {
          _logger.e('Failed to parse image urls: $e');
          return <String>[];
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to upload images: ${error.userMessage}');
        throw error;
      },
    );
  }
}
