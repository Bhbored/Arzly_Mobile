// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
  id: json['id'] as String,
  listingId: json['listingId'] as String?,
  contextRole: $enumDecode(_$ChatRoleEnumMap, json['contextRole']),
  isArchived: json['isArchived'] as bool,
  lastActivity: DateTime.parse(json['lastActivity'] as String),
  unreadCount: (json['unreadCount'] as num).toInt(),
  lastMessagePreview: json['lastMessagePreview'] as String? ?? '',
);

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
  'id': instance.id,
  'listingId': instance.listingId,
  'contextRole': _$ChatRoleEnumMap[instance.contextRole]!,
  'isArchived': instance.isArchived,
  'lastActivity': instance.lastActivity.toIso8601String(),
  'unreadCount': instance.unreadCount,
  'lastMessagePreview': instance.lastMessagePreview,
};

const _$ChatRoleEnumMap = {
  ChatRole.buyer: 'buyer',
  ChatRole.seller: 'seller',
  ChatRole.neutral: 'neutral',
};
