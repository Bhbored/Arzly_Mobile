// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_message_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketMessageAddRequest _$TicketMessageAddRequestFromJson(
  Map<String, dynamic> json,
) => _TicketMessageAddRequest(
  ticketId: json['TicketId'] as String,
  senderId: json['SenderId'] as String,
  receiverId: json['ReceiverId'] as String,
  message: json['Message'] as String,
  isInternalNote: json['IsInternalNote'] as bool,
);

Map<String, dynamic> _$TicketMessageAddRequestToJson(
  _TicketMessageAddRequest instance,
) => <String, dynamic>{
  'TicketId': instance.ticketId,
  'SenderId': instance.senderId,
  'ReceiverId': instance.receiverId,
  'Message': instance.message,
  'IsInternalNote': instance.isInternalNote,
};
