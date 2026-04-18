// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  id: json['id'] as String,
  senderId: json['senderId'] as String,
  text: json['text'] as String,
  sentAt: DateTime.parse(json['sentAt'] as String),
  isRead: json['isRead'] as bool,
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'text': instance.text,
      'sentAt': instance.sentAt.toIso8601String(),
      'isRead': instance.isRead,
    };
