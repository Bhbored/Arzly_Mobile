import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_category_options.freezed.dart';

@freezed
sealed class SubCategoryOptions with _$SubCategoryOptions {
  const factory SubCategoryOptions({
    required String id,
    required String subCategoryId,
    required String name,
    String? description,
    required int itemsCount,
  }) = _SubCategoryOptions;
}