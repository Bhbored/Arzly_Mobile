// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingAddRequest _$ListingAddRequestFromJson(Map<String, dynamic> json) =>
    _ListingAddRequest(
      title: json['Title'] as String,
      description: json['Description'] as String,
      price: (json['Price'] as num).toDouble(),
      status: $enumDecode(_$ListingStatusEnumMap, json['Status']),
      primaryImageUrl: json['PrimaryImageUrl'] as String?,
      imagesUrl: (json['ImagesUrl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ownerId: json['OwnerId'] as String,
      categoryId: json['CategoryId'] as String,
      subcategoryId: json['SubcategoryId'] as String,
      pickupLocationId: json['PickupLocationId'] as String,
    );

Map<String, dynamic> _$ListingAddRequestToJson(_ListingAddRequest instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Description': instance.description,
      'Price': instance.price,
      'Status': _$ListingStatusEnumMap[instance.status]!,
      'PrimaryImageUrl': instance.primaryImageUrl,
      'ImagesUrl': instance.imagesUrl,
      'OwnerId': instance.ownerId,
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
