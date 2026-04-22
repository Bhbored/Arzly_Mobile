// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_listing_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedListingAddRequest _$SavedListingAddRequestFromJson(
  Map<String, dynamic> json,
) => _SavedListingAddRequest(
  userId: json['UserId'] as String,
  listingId: json['ListingId'] as String,
);

Map<String, dynamic> _$SavedListingAddRequestToJson(
  _SavedListingAddRequest instance,
) => <String, dynamic>{
  'UserId': instance.userId,
  'ListingId': instance.listingId,
};
