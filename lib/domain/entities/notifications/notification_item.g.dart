// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    _NotificationItem(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      source: $enumDecode(_$NotificationSourceEnumMap, json['source']),
      isBroadcast: json['isBroadcast'] as bool,
      isRead: json['isRead'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      deepLink: json['deepLink'] as String?,
    );

Map<String, dynamic> _$NotificationItemToJson(_NotificationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'source': _$NotificationSourceEnumMap[instance.source]!,
      'isBroadcast': instance.isBroadcast,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt.toIso8601String(),
      'deepLink': instance.deepLink,
    };

const _$NotificationSourceEnumMap = {
  NotificationSource.system: 'system',
  NotificationSource.message: 'message',
  NotificationSource.listing: 'listing',
  NotificationSource.admin: 'admin',
};
