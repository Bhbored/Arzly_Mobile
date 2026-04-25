// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingUpdateRequest _$ListingUpdateRequestFromJson(
  Map<String, dynamic> json,
) => _ListingUpdateRequest(
  id: json['Id'] as String,
  title: json['Title'] as String,
  description: json['Description'] as String,
  price: (json['Price'] as num).toDouble(),
  status: $enumDecode(_$ListingStatusEnumMap, json['Status']),
  primaryImageUrl: json['PrimaryImageUrl'] as String?,
  imagesUrl: (json['ImagesUrl'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  categoryId: json['CategoryId'] as String,
  subcategoryId: json['SubcategoryId'] as String,
  pickupLocationId: json['PickupLocationId'] as String,
);

Map<String, dynamic> _$ListingUpdateRequestToJson(
  _ListingUpdateRequest instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Title': instance.title,
  'Description': instance.description,
  'Price': instance.price,
  'Status': _$ListingStatusEnumMap[instance.status]!,
  'PrimaryImageUrl': instance.primaryImageUrl,
  'ImagesUrl': instance.imagesUrl,
  'CategoryId': instance.categoryId,
  'SubcategoryId': instance.subcategoryId,
  'PickupLocationId': instance.pickupLocationId,
};

const _$ListingStatusEnumMap = {
  ListingStatus.pending: 'Pending',
  ListingStatus.approved: 'Approved',
  ListingStatus.rejected: 'Rejected',
  ListingStatus.sold: 'Sold',
  ListingStatus.archived: 'Archived',
};
