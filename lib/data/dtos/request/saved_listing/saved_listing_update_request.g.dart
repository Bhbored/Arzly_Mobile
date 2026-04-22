// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_listing_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedListingUpdateRequest _$SavedListingUpdateRequestFromJson(
  Map<String, dynamic> json,
) => _SavedListingUpdateRequest(
  id: json['Id'] as String,
  deletedAt: json['DeletedAt'] == null
      ? null
      : DateTime.parse(json['DeletedAt'] as String),
);

Map<String, dynamic> _$SavedListingUpdateRequestToJson(
  _SavedListingUpdateRequest instance,
) => <String, dynamic>{
  'Id': instance.id,
  'DeletedAt': instance.deletedAt?.toIso8601String(),
};
