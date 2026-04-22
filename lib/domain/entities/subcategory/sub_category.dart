import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_category.freezed.dart';

@freezed
sealed class SubCategory with _$SubCategory {
  const factory SubCategory({
    required String id,
    required String categoryId,
    required String name,
    String? description,
    required int itemsCount,
  }) = _SubCategory;
}