import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_response.freezed.dart';
part 'sub_category_response.g.dart';

@freezed
sealed class SubCategoryResponse with _$SubCategoryResponse {
  const factory SubCategoryResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'CategoryId') required String categoryId,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'ItemsCount') required int itemsCount,
  }) = _SubCategoryResponse;

  factory SubCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryResponseFromJson(json);
}
