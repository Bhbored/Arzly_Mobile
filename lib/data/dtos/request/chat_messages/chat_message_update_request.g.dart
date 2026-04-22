// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageUpdateRequest _$ChatMessageUpdateRequestFromJson(
  Map<String, dynamic> json,
) => _ChatMessageUpdateRequest(
  id: json['Id'] as String,
  text: json['Text'] as String,
  readAt: json['ReadAt'] == null
      ? null
      : DateTime.parse(json['ReadAt'] as String),
);

Map<String, dynamic> _$ChatMessageUpdateRequestToJson(
  _ChatMessageUpdateRequest instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Text': instance.text,
  'ReadAt': instance.readAt?.toIso8601String(),
};
