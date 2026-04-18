// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
  id: json['id'] as String,
  authMethod: $enumDecode(_$AuthMethodEnumMap, json['authMethod']),
  firebaseUid: json['firebaseUid'] as String?,
  publicName: json['publicName'] as String?,
  publicLocation: json['publicLocation'] as String?,
  profileImageUrl: json['profileImageUrl'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  deliveryLocations:
      (json['deliveryLocations'] as List<dynamic>?)
          ?.map((e) => DeliveryLocation.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  searchHistory:
      (json['searchHistory'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  preferences: json['preferences'] == null
      ? null
      : UserPreferences.fromJson(json['preferences'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
  'id': instance.id,
  'authMethod': _$AuthMethodEnumMap[instance.authMethod]!,
  'firebaseUid': instance.firebaseUid,
  'publicName': instance.publicName,
  'publicLocation': instance.publicLocation,
  'profileImageUrl': instance.profileImageUrl,
  'createdAt': instance.createdAt.toIso8601String(),
  'deliveryLocations': instance.deliveryLocations,
  'searchHistory': instance.searchHistory,
  'preferences': instance.preferences,
};

const _$AuthMethodEnumMap = {
  AuthMethod.firebase: 'firebase',
  AuthMethod.identity: 'identity',
};
