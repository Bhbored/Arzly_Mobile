import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/dio_instances/category/category_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:arzly/data/dtos/response/category/category_response.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'category_repo.g.dart';

@Riverpod(keepAlive: true)
CategoryRepo categoryRepo(Ref ref) {
  final client = ref.read(categoryClientProvider);
  final executor = ref.read(executorProvider(client.dio));
  return CategoryRepo(executor: executor);
}

class CategoryRepo {
  final ApiExecutor executor;
  final _logger = Logger();

  CategoryRepo({required this.executor});
  Future<List<CategoryResponse>> fetchAll() async {
    final response = await executor.execute(
      ApiRequest(path: '', method: HttpMethod.get),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final categories = rawList
              .map((json) => CategoryResponse.fromJson(json))
              .toList();
          _logger.i('Fetched ${categories.length} categories successfully');
          return categories;
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse category data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch categories: ${error.userMessage}');
        throw error;
      },
    );
  }
}
