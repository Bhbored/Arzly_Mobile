// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) =>
    _ChatResponse(
      id: json['Id'] as String,
      listingId: json['ListingId'] as String,
      chatRole: $enumDecode(_$ChatRoleEnumMap, json['ChatRole']),
      isArchived: json['IsArchived'] as bool,
      isDeleted: json['IsDeleted'] as bool,
      isDiscontinued: json['IsDiscontinued'] as bool,
      lastActivity: DateTime.parse(json['LastActivity'] as String),
      initiatorId: json['InitiatorId'] as String,
      receiverId: json['ReceiverId'] as String,
    );

Map<String, dynamic> _$ChatResponseToJson(_ChatResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'ListingId': instance.listingId,
      'ChatRole': _$ChatRoleEnumMap[instance.chatRole]!,
      'IsArchived': instance.isArchived,
      'IsDeleted': instance.isDeleted,
      'IsDiscontinued': instance.isDiscontinued,
      'LastActivity': instance.lastActivity.toIso8601String(),
      'InitiatorId': instance.initiatorId,
      'ReceiverId': instance.receiverId,
    };

const _$ChatRoleEnumMap = {
  ChatRole.buyer: 'Buyer',
  ChatRole.seller: 'Seller',
  ChatRole.neutral: 'Neutral',
};
