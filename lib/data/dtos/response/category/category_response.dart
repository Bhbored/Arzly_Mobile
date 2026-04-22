import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_response.freezed.dart';
part 'category_response.g.dart';

@freezed
sealed class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'ItemsCount') @Default(0) int itemsCount,
    @JsonKey(name: 'ImageUrl') String? imageUrl,
  }) = _CategoryResponse;
  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
