// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_location_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PickupLocationUpdateRequest _$PickupLocationUpdateRequestFromJson(
  Map<String, dynamic> json,
) => _PickupLocationUpdateRequest(
  id: json['Id'] as String,
  label: $enumDecode(_$LocationLabelEnumMap, json['Label']),
  address: json['Address'] as String,
  notes: json['Notes'] as String?,
  lat: (json['Lat'] as num).toDouble(),
  lon: (json['Lon'] as num).toDouble(),
  isDefault: json['IsDefault'] as bool,
);

Map<String, dynamic> _$PickupLocationUpdateRequestToJson(
  _PickupLocationUpdateRequest instance,
) => <String, dynamic>{
  'Id': instance.id,
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
