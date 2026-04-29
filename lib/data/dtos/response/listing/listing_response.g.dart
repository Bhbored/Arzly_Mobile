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
      isPriceNegotiable: json['IsPriceNegotiable'] as bool? ?? false,
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
      pickupLocationId: json['PickupLocationId'] as String,
      listingDetails: json['ListingDetails'],
      name: json['Name'] as String,
      phoneNumber: json['PhoneNumber'] as String,
      contactMethod: $enumDecode(_$ContactMethodEnumMap, json['ContactMethod']),
      isPromoted: json['IsPromoted'] as bool? ?? false,
      promotionType: $enumDecodeNullable(
        _$PromotionTypeEnumMap,
        json['PromotionType'],
      ),
      promotionStartDate: json['PromotionStartDate'] == null
          ? null
          : DateTime.parse(json['PromotionStartDate'] as String),
      promotionEndDate: json['PromotionEndDate'] == null
          ? null
          : DateTime.parse(json['PromotionEndDate'] as String),
    );

Map<String, dynamic> _$ListingResponseToJson(_ListingResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Title': instance.title,
      'Description': instance.description,
      'Price': instance.price,
      'IsPriceNegotiable': instance.isPriceNegotiable,
      'Status': _$ListingStatusEnumMap[instance.status]!,
      'PrimaryImageUrl': instance.primaryImageUrl,
      'ImagesUrl': instance.imagesUrl,
      'CreatedAt': instance.createdAt.toIso8601String(),
      'UpdatedAt': instance.updatedAt?.toIso8601String(),
      'OwnerId': instance.ownerId,
      'CategoryId': instance.categoryId,
      'SubcategoryId': instance.subcategoryId,
      'PickupLocationId': instance.pickupLocationId,
      'ListingDetails': instance.listingDetails,
      'Name': instance.name,
      'PhoneNumber': instance.phoneNumber,
      'ContactMethod': _$ContactMethodEnumMap[instance.contactMethod]!,
      'IsPromoted': instance.isPromoted,
      'PromotionType': _$PromotionTypeEnumMap[instance.promotionType],
      'PromotionStartDate': instance.promotionStartDate?.toIso8601String(),
      'PromotionEndDate': instance.promotionEndDate?.toIso8601String(),
    };

const _$ListingStatusEnumMap = {
  ListingStatus.pending: 'Pending',
  ListingStatus.active: 'Active',
  ListingStatus.sold: 'Sold',
  ListingStatus.expired: 'Expired',
  ListingStatus.rejected: 'Rejected',
  ListingStatus.deleted: 'Deleted',
};

const _$ContactMethodEnumMap = {
  ContactMethod.phoneNumber: 'PhoneNumber',
  ContactMethod.inAppChat: 'InAppChat',
  ContactMethod.both: 'Both',
};

const _$PromotionTypeEnumMap = {
  PromotionType.featured: 'Featured',
  PromotionType.premium: 'Premium',
  PromotionType.elite: 'Elite',
};
