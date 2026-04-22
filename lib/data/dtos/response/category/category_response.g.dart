// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    _CategoryResponse(
      id: json['Id'] as String,
      name: json['Name'] as String,
      description: json['Description'] as String?,
      itemsCount: (json['ItemsCount'] as num?)?.toInt() ?? 0,
      imageUrl: json['ImageUrl'] as String?,
    );

Map<String, dynamic> _$CategoryResponseToJson(_CategoryResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Description': instance.description,
      'ItemsCount': instance.itemsCount,
      'ImageUrl': instance.imageUrl,
    };
