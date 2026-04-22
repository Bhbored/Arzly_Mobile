// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_listing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedListingResponse _$SavedListingResponseFromJson(
  Map<String, dynamic> json,
) => _SavedListingResponse(
  id: json['Id'] as String,
  userId: json['UserId'] as String,
  listingId: json['ListingId'] as String,
  savedAt: DateTime.parse(json['SavedAt'] as String),
  deletedAt: json['DeletedAt'] == null
      ? null
      : DateTime.parse(json['DeletedAt'] as String),
);

Map<String, dynamic> _$SavedListingResponseToJson(
  _SavedListingResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'UserId': instance.userId,
  'ListingId': instance.listingId,
  'SavedAt': instance.savedAt.toIso8601String(),
  'DeletedAt': instance.deletedAt?.toIso8601String(),
};
