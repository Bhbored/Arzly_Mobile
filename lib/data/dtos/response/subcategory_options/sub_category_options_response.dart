import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_options_response.freezed.dart';
part 'sub_category_options_response.g.dart';

@freezed
sealed class SubCategoryOptionsResponse with _$SubCategoryOptionsResponse {
  const factory SubCategoryOptionsResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'SubCategoryId') required String subCategoryId,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'ItemsCount') required int itemsCount,
  }) = _SubCategoryOptionsResponse;

  factory SubCategoryOptionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryOptionsResponseFromJson(json);
}
