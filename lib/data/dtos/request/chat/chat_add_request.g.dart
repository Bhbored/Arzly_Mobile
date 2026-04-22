// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatAddRequest _$ChatAddRequestFromJson(Map<String, dynamic> json) =>
    _ChatAddRequest(
      contextRole: $enumDecode(_$ChatRoleEnumMap, json['ContextRole']),
      initiatorId: json['InitiatorId'] as String,
      receiverId: json['ReceiverId'] as String,
      listingId: json['ListingId'] as String,
    );

Map<String, dynamic> _$ChatAddRequestToJson(_ChatAddRequest instance) =>
    <String, dynamic>{
      'ContextRole': _$ChatRoleEnumMap[instance.contextRole]!,
      'InitiatorId': instance.initiatorId,
      'ReceiverId': instance.receiverId,
      'ListingId': instance.listingId,
    };

const _$ChatRoleEnumMap = {
  ChatRole.buyer: 'Buyer',
  ChatRole.seller: 'Seller',
  ChatRole.neutral: 'Neutral',
};
