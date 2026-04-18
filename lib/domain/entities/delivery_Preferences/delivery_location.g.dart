// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryLocation _$DeliveryLocationFromJson(Map<String, dynamic> json) =>
    _DeliveryLocation(
      id: json['id'] as String,
      label: json['label'] as String,
      address: json['address'] as String,
      notes: json['notes'] as String?,
      isDefault: json['isDefault'] as bool,
    );

Map<String, dynamic> _$DeliveryLocationToJson(_DeliveryLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'address': instance.address,
      'notes': instance.notes,
      'isDefault': instance.isDefault,
    };
