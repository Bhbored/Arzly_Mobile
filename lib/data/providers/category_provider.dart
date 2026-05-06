import 'package:arzly/data/repositories/category/category_repo.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/mappers/category_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

@riverpod
class CategoryData extends _$CategoryData {
  CategoryRepo get _categoryRepo => ref.read(categoryRepoProvider.notifier);
  @override
  FutureOr<List<Category>> build() async {
    final categories = await _categoryRepo.fetchAll();
    return categories.map((category) => category.toEntity()).toList();
  }
}
