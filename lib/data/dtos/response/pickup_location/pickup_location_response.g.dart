// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PickupLocationResponse _$PickupLocationResponseFromJson(
  Map<String, dynamic> json,
) => _PickupLocationResponse(
  id: json['Id'] as String,
  userId: json['UserId'] as String,
  label: $enumDecode(_$LocationLabelEnumMap, json['Label']),
  address: json['Address'] as String,
  notes: json['Notes'] as String?,
  lat: (json['Lat'] as num).toDouble(),
  lon: (json['Lon'] as num).toDouble(),
  isDefault: json['IsDefault'] as bool,
);

Map<String, dynamic> _$PickupLocationResponseToJson(
  _PickupLocationResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'UserId': instance.userId,
  'Label': _$LocationLabelEnumMap[instance.label]!,
  'Address': instance.address,
  'Notes': instance.notes,
  'Lat': instance.lat,
  'Lon': instance.lon,
  'IsDefault': instance.isDefault,
};

const _$LocationLabelEnumMap = {
  LocationLabel.home: 'Home',
  LocationLabel.work: 'Work',
  LocationLabel.other: 'Other',
};
