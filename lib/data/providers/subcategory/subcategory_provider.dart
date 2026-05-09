import 'package:arzly/data/repositories/subcategory/subcatgeory_repo.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/domain/mappers/sub_category_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'subcategory_provider.g.dart';

Duration? noProviderRetry(int _, Object _) => null;

@Riverpod(retry: noProviderRetry, keepAlive: false)
class SubcategoryNotifier extends _$SubcategoryNotifier {
  SubCategoryRepo get _subCategoryRepo => ref.read(subCategoryRepoProvider);
  @override
  FutureOr<List<SubCategory>> build(String categoryId) async {
    return _loadSubcategories(categoryId);
  }

  Future<void> fetchSubcategories(String categoryId) async {
    if (ref.mounted) {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() => _loadSubcategories(categoryId));
    }
  }

  Future<List<SubCategory>> _loadSubcategories(String categoryId) async {
    final subcategories = await _subCategoryRepo.getByCategoryId(categoryId);
    return subcategories.map((subcategory) => subcategory.toEntity()).toList();
  }
}
