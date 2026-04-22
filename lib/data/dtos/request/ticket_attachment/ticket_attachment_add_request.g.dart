// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketAttachmentAddRequest _$TicketAttachmentAddRequestFromJson(
  Map<String, dynamic> json,
) => _TicketAttachmentAddRequest(
  ticketId: json['TicketId'] as String,
  fileUrl: json['FileUrl'] as String,
  fileName: json['FileName'] as String?,
  contentType: json['ContentType'] as String?,
  fileSize: (json['FileSize'] as num).toInt(),
);

Map<String, dynamic> _$TicketAttachmentAddRequestToJson(
  _TicketAttachmentAddRequest instance,
) => <String, dynamic>{
  'TicketId': instance.ticketId,
  'FileUrl': instance.fileUrl,
  'FileName': instance.fileName,
  'ContentType': instance.contentType,
  'FileSize': instance.fileSize,
};
