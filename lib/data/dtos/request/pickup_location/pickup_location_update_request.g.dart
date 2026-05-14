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
  locationPreset: $enumDecode(_$LocationPresetEnumMap, json['LocationPreset']),
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
  'LocationPreset': _$LocationPresetEnumMap[instance.locationPreset]!,
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

const _$LocationPresetEnumMap = {
  LocationPreset.beirut: 'Beirut',
  LocationPreset.jbeilMountLebanon: 'JbeilMountLebanon',
  LocationPreset.keserwanMountLebanon: 'KeserwanMountLebanon',
  LocationPreset.matnMountLebanon: 'MatnMountLebanon',
  LocationPreset.baabdaMountLebanon: 'BaabdaMountLebanon',
  LocationPreset.aleyMountLebanon: 'AleyMountLebanon',
  LocationPreset.choufMountLebanon: 'ChoufMountLebanon',
  LocationPreset.akkarNorthLebanon: 'AkkarNorthLebanon',
  LocationPreset.miniehDanniyehNorthLebanon: 'MiniehDanniyehNorthLebanon',
  LocationPreset.zghartaNorthLebanon: 'ZghartaNorthLebanon',
  LocationPreset.tripoliNorthLebanon: 'TripoliNorthLebanon',
  LocationPreset.kouraNorthLebanon: 'KouraNorthLebanon',
  LocationPreset.batrounNorthLebanon: 'BatrounNorthLebanon',
  LocationPreset.bcharreNorthLebanon: 'BcharreNorthLebanon',
  LocationPreset.saidaSouthLebanon: 'SaidaSouthLebanon',
  LocationPreset.jezzineSouthLebanon: 'JezzineSouthLebanon',
  LocationPreset.tyreSouthLebanon: 'TyreSouthLebanon',
  LocationPreset.zahleBeirqaa: 'ZahleBeirqaa',
  LocationPreset.westBeqaaBeirqaa: 'WestBeqaaBeirqaa',
  LocationPreset.rashayaBeirqaa: 'RashayaBeirqaa',
  LocationPreset.nabatiehNabatieh: 'NabatiehNabatieh',
  LocationPreset.marjeyounNabatieh: 'MarjeyounNabatieh',
  LocationPreset.hasbayaNabatieh: 'HasbayaNabatieh',
  LocationPreset.bintJbeilNabatieh: 'BintJbeilNabatieh',
  LocationPreset.baalbekBaalbekHermel: 'BaalbekBaalbekHermel',
  LocationPreset.hermelBaalbekHermel: 'HermelBaalbekHermel',
};
