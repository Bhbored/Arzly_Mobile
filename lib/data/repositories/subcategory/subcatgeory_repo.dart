import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/client/dio_client.dart';
import 'package:arzly/core/network/dio_instances/subcategory/subcategory_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:arzly/data/dtos/response/subcategory/sub_category_response.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'subcatgeory_repo.g.dart';

@Riverpod(keepAlive: true)
SubCategoryRepo subCategoryRepo(Ref ref) {
  final client = ref.read(subcategoryClientProvider);
  final executor = ref.read(executorProvider(client.dio));
  return SubCategoryRepo(client: client, executor: executor);
}

class SubCategoryRepo {
  final DioClient client;
  final ApiExecutor executor;
  SubCategoryRepo({required this.client, required this.executor});
  final _logger = Logger();

  Future<List<SubCategoryResponse>> getByCategoryId(String categoryId) async {
    final response = await executor.execute(
      ApiRequest(path: '/category/$categoryId', method: HttpMethod.get),
    );
    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final subCategories = rawList
              .map((json) => SubCategoryResponse.fromJson(json))
              .toList();
          _logger.i(
            'Fetched ${subCategories.length} subcategories successfully',
          );
          return subCategories;
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse subcategory data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e(
          'Failed to fetch subcategories by category id: ${error.userMessage}',
        );
        throw error;
      },
    );
  }

  Future<List<SubCategoryResponse>> fetchAll() async {
    final response = await executor.execute(
      ApiRequest(path: '', method: HttpMethod.get),
    );
    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final subCategories = rawList
              .map((json) => SubCategoryResponse.fromJson(json))
              .toList();
          _logger.i(
            'Fetched ${subCategories.length} subcategories successfully',
          );
          return subCategories;
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse subcategory data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch subcategories: ${error.userMessage}');
        throw error;
      },
    );
  }
}
