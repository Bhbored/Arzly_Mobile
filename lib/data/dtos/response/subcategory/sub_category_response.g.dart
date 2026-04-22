// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubCategoryResponse _$SubCategoryResponseFromJson(Map<String, dynamic> json) =>
    _SubCategoryResponse(
      id: json['Id'] as String,
      categoryId: json['CategoryId'] as String,
      name: json['Name'] as String,
      description: json['Description'] as String?,
      itemsCount: (json['ItemsCount'] as num).toInt(),
    );

Map<String, dynamic> _$SubCategoryResponseToJson(
  _SubCategoryResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'CategoryId': instance.categoryId,
  'Name': instance.name,
  'Description': instance.description,
  'ItemsCount': instance.itemsCount,
};
