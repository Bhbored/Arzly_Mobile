// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_message_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketMessageUpdateRequest _$TicketMessageUpdateRequestFromJson(
  Map<String, dynamic> json,
) => _TicketMessageUpdateRequest(
  id: json['Id'] as String,
  message: json['Message'] as String,
  isInternalNote: json['IsInternalNote'] as bool,
);

Map<String, dynamic> _$TicketMessageUpdateRequestToJson(
  _TicketMessageUpdateRequest instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Message': instance.message,
  'IsInternalNote': instance.isInternalNote,
};
