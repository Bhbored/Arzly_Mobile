// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketAttachmentUpdateRequest _$TicketAttachmentUpdateRequestFromJson(
  Map<String, dynamic> json,
) => _TicketAttachmentUpdateRequest(
  id: json['Id'] as String,
  fileName: json['FileName'] as String?,
  contentType: json['ContentType'] as String?,
);

Map<String, dynamic> _$TicketAttachmentUpdateRequestToJson(
  _TicketAttachmentUpdateRequest instance,
) => <String, dynamic>{
  'Id': instance.id,
  'FileName': instance.fileName,
  'ContentType': instance.contentType,
};
