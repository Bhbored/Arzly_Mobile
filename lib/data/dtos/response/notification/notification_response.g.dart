// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationResponse _$NotificationResponseFromJson(
  Map<String, dynamic> json,
) => _NotificationResponse(
  id: json['Id'] as String,
  userId: json['UserId'] as String?,
  chatterId: json['ChatterId'] as String?,
  listingId: json['ListingId'] as String?,
  title: json['Title'] as String,
  body: json['Body'] as String,
  source: $enumDecode(_$NotificationSourceEnumMap, json['Source']),
  isBroadcast: json['IsBroadcast'] as bool,
  isRead: json['IsRead'] as bool,
  createdAt: DateTime.parse(json['CreatedAt'] as String),
  readAt: json['ReadAt'] == null
      ? null
      : DateTime.parse(json['ReadAt'] as String),
  deepLink: json['DeepLink'] as String?,
  actionType: $enumDecode(_$NotificationActionTypeEnumMap, json['ActionType']),
  metadata: json['Metadata'] as String?,
  expiresAt: json['ExpiresAt'] == null
      ? null
      : DateTime.parse(json['ExpiresAt'] as String),
);

Map<String, dynamic> _$NotificationResponseToJson(
  _NotificationResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'UserId': instance.userId,
  'ChatterId': instance.chatterId,
  'ListingId': instance.listingId,
  'Title': instance.title,
  'Body': instance.body,
  'Source': _$NotificationSourceEnumMap[instance.source]!,
  'IsBroadcast': instance.isBroadcast,
  'IsRead': instance.isRead,
  'CreatedAt': instance.createdAt.toIso8601String(),
  'ReadAt': instance.readAt?.toIso8601String(),
  'DeepLink': instance.deepLink,
  'ActionType': _$NotificationActionTypeEnumMap[instance.actionType]!,
  'Metadata': instance.metadata,
  'ExpiresAt': instance.expiresAt?.toIso8601String(),
};

const _$NotificationSourceEnumMap = {
  NotificationSource.system: 'System',
  NotificationSource.listing: 'Listing',
  NotificationSource.chat: 'Chat',
  NotificationSource.ticket: 'Ticket',
  NotificationSource.promotion: 'Promotion',
};

const _$NotificationActionTypeEnumMap = {
  NotificationActionType.announcement: 'Announcement',
  NotificationActionType.newMessage: 'NewMessage',
  NotificationActionType.listingApproved: 'ListingApproved',
  NotificationActionType.listingRejected: 'ListingRejected',
};
