import 'package:arzly/data/repositories/category/category_repo.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/mappers/category_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

Duration? noProviderRetry(int _, Object _) => null;

@Riverpod(retry: noProviderRetry, keepAlive: true)
class CategoryData extends _$CategoryData {
  CategoryRepo get _categoryRepo => ref.read(categoryRepoProvider);
  @override
  FutureOr<List<Category>> build() async {
    return _loadCategories();
  }

  Future<void> fetchCategories() async {
    if (ref.mounted) {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(_loadCategories);
    }
  }

  Future<List<Category>> _loadCategories() async {
    final categories = await _categoryRepo.fetchAll();
    return categories.map((category) => category.toEntity()).toList();
  }
}
