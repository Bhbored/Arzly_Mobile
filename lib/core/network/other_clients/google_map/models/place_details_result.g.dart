// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceDetailsResult _$PlaceDetailsResultFromJson(Map<String, dynamic> json) =>
    _PlaceDetailsResult(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      displayName: json['displayName'] as String,
      formattedAddress: json['formattedAddress'] as String,
      staticMapUrl: json['staticMapUrl'] as String,
    );

Map<String, dynamic> _$PlaceDetailsResultToJson(_PlaceDetailsResult instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'displayName': instance.displayName,
      'formattedAddress': instance.formattedAddress,
      'staticMapUrl': instance.staticMapUrl,
    };
