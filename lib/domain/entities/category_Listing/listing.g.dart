// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Listing _$ListingFromJson(Map<String, dynamic> json) => _Listing(
  id: json['id'] as String,
  ownerId: json['ownerId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  priceOrType: json['priceOrType'] as String?,
  status: $enumDecode(_$ListingStatusEnumMap, json['status']),
  primaryImageUrl: json['primaryImageUrl'] as String?,
  locationHint: json['locationHint'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  category: Category.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ListingToJson(_Listing instance) => <String, dynamic>{
  'id': instance.id,
  'ownerId': instance.ownerId,
  'title': instance.title,
  'description': instance.description,
  'priceOrType': instance.priceOrType,
  'status': _$ListingStatusEnumMap[instance.status]!,
  'primaryImageUrl': instance.primaryImageUrl,
  'locationHint': instance.locationHint,
  'createdAt': instance.createdAt.toIso8601String(),
  'category': instance.category,
};

const _$ListingStatusEnumMap = {
  ListingStatus.pending: 'pending',
  ListingStatus.approved: 'approved',
  ListingStatus.rejected: 'rejected',
  ListingStatus.sold: 'sold',
  ListingStatus.archived: 'archived',
};
