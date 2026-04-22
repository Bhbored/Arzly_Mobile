// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingResponse _$ListingResponseFromJson(Map<String, dynamic> json) =>
    _ListingResponse(
      id: json['Id'] as String,
      title: json['Title'] as String,
      description: json['Description'] as String,
      price: (json['Price'] as num).toDouble(),
      status: $enumDecode(_$ListingStatusEnumMap, json['Status']),
      primaryImageUrl: json['PrimaryImageUrl'] as String?,
      imagesUrl: (json['ImagesUrl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['CreatedAt'] as String),
      updatedAt: json['UpdatedAt'] == null
          ? null
          : DateTime.parse(json['UpdatedAt'] as String),
      ownerId: json['OwnerId'] as String,
      categoryId: json['CategoryId'] as String,
      subcategoryId: json['SubcategoryId'] as String,
      subcategoryOptionsId: json['SubcategoryOptionsId'] as String?,
      pickupLocationId: json['PickupLocationId'] as String,
    );

Map<String, dynamic> _$ListingResponseToJson(_ListingResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Title': instance.title,
      'Description': instance.description,
      'Price': instance.price,
      'Status': _$ListingStatusEnumMap[instance.status]!,
      'PrimaryImageUrl': instance.primaryImageUrl,
      'ImagesUrl': instance.imagesUrl,
      'CreatedAt': instance.createdAt.toIso8601String(),
      'UpdatedAt': instance.updatedAt?.toIso8601String(),
      'OwnerId': instance.ownerId,
      'CategoryId': instance.categoryId,
      'SubcategoryId': instance.subcategoryId,
      'SubcategoryOptionsId': instance.subcategoryOptionsId,
      'PickupLocationId': instance.pickupLocationId,
    };

const _$ListingStatusEnumMap = {
  ListingStatus.pending: 'Pending',
  ListingStatus.approved: 'Approved',
  ListingStatus.rejected: 'Rejected',
  ListingStatus.sold: 'Sold',
  ListingStatus.archived: 'Archived',
};
