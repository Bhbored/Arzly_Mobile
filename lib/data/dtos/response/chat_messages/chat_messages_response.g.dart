// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageResponse _$ChatMessageResponseFromJson(Map<String, dynamic> json) =>
    _ChatMessageResponse(
      id: json['Id'] as String,
      chatId: json['ChatId'] as String,
      senderId: json['SenderId'] as String,
      receiverId: json['ReceiverId'] as String,
      text: json['Text'] as String,
      sentAt: DateTime.parse(json['SentAt'] as String),
      isRead: json['IsRead'] as bool,
      readAt: json['ReadAt'] == null
          ? null
          : DateTime.parse(json['ReadAt'] as String),
    );

Map<String, dynamic> _$ChatMessageResponseToJson(
  _ChatMessageResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'ChatId': instance.chatId,
  'SenderId': instance.senderId,
  'ReceiverId': instance.receiverId,
  'Text': instance.text,
  'SentAt': instance.sentAt.toIso8601String(),
  'IsRead': instance.isRead,
  'ReadAt': instance.readAt?.toIso8601String(),
};
