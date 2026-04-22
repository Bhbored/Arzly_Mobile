// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageAddRequest _$ChatMessageAddRequestFromJson(
  Map<String, dynamic> json,
) => _ChatMessageAddRequest(
  chatId: json['ChatId'] as String,
  senderId: json['SenderId'] as String,
  receiverId: json['ReceiverId'] as String,
  text: json['Text'] as String,
);

Map<String, dynamic> _$ChatMessageAddRequestToJson(
  _ChatMessageAddRequest instance,
) => <String, dynamic>{
  'ChatId': instance.chatId,
  'SenderId': instance.senderId,
  'ReceiverId': instance.receiverId,
  'Text': instance.text,
};
