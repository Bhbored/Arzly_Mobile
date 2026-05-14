// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceResult _$PlaceResultFromJson(Map<String, dynamic> json) => _PlaceResult(
  placeId: json['placeId'] as String,
  mainText: json['mainText'] as String,
  secondaryText: json['secondaryText'] as String,
  fullText: json['fullText'] as String,
);

Map<String, dynamic> _$PlaceResultToJson(_PlaceResult instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'mainText': instance.mainText,
      'secondaryText': instance.secondaryText,
      'fullText': instance.fullText,
    };
