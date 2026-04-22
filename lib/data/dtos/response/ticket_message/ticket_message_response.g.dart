// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketMessageResponse _$TicketMessageResponseFromJson(
  Map<String, dynamic> json,
) => _TicketMessageResponse(
  id: json['Id'] as String,
  ticketId: json['TicketId'] as String,
  senderId: json['SenderId'] as String,
  receiverId: json['ReceiverId'] as String,
  message: json['Message'] as String,
  sentAt: DateTime.parse(json['SentAt'] as String),
  isInternalNote: json['IsInternalNote'] as bool,
);

Map<String, dynamic> _$TicketMessageResponseToJson(
  _TicketMessageResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'TicketId': instance.ticketId,
  'SenderId': instance.senderId,
  'ReceiverId': instance.receiverId,
  'Message': instance.message,
  'SentAt': instance.sentAt.toIso8601String(),
  'IsInternalNote': instance.isInternalNote,
};
