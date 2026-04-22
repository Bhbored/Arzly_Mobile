// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_options_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubCategoryOptionsResponse _$SubCategoryOptionsResponseFromJson(
  Map<String, dynamic> json,
) => _SubCategoryOptionsResponse(
  id: json['Id'] as String,
  subCategoryId: json['SubCategoryId'] as String,
  name: json['Name'] as String,
  description: json['Description'] as String?,
  itemsCount: (json['ItemsCount'] as num).toInt(),
);

Map<String, dynamic> _$SubCategoryOptionsResponseToJson(
  _SubCategoryOptionsResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'SubCategoryId': instance.subCategoryId,
  'Name': instance.name,
  'Description': instance.description,
  'ItemsCount': instance.itemsCount,
};
