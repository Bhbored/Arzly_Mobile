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
      primaryImageUrl: json['PrimaryImageUrl'] as String?,
      imagesUrl: (json['ImagesUrl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryId: json['CategoryId'] as String,
      subcategoryId: json['SubcategoryId'] as String,
      pickupLocationId: json['PickupLocationId'] as String,
      name: json['Name'] as String,
      phoneNumber: json['PhoneNumber'] as String,
      isPriceNegotiable: json['IsPriceNegotiable'] as bool? ?? false,
      contactMethod: $enumDecode(_$ContactMethodEnumMap, json['ContactMethod']),
      listingDetails: json['ListingDetails'],
    );

Map<String, dynamic> _$ListingAddRequestToJson(_ListingAddRequest instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Description': instance.description,
      'Price': instance.price,
      'PrimaryImageUrl': instance.primaryImageUrl,
      'ImagesUrl': instance.imagesUrl,
      'CategoryId': instance.categoryId,
      'SubcategoryId': instance.subcategoryId,
      'PickupLocationId': instance.pickupLocationId,
      'Name': instance.name,
      'PhoneNumber': instance.phoneNumber,
      'IsPriceNegotiable': instance.isPriceNegotiable,
      'ContactMethod': _$ContactMethodEnumMap[instance.contactMethod]!,
      'ListingDetails': instance.listingDetails,
    };

const _$ContactMethodEnumMap = {
  ContactMethod.phoneNumber: 'PhoneNumber',
  ContactMethod.inAppChat: 'InAppChat',
  ContactMethod.both: 'Both',
};
