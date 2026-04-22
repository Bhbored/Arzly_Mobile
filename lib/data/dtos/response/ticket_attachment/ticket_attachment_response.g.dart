// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketAttachmentResponse _$TicketAttachmentResponseFromJson(
  Map<String, dynamic> json,
) => _TicketAttachmentResponse(
  id: json['Id'] as String,
  ticketId: json['TicketId'] as String,
  fileUrl: json['FileUrl'] as String,
  fileName: json['FileName'] as String?,
  contentType: json['ContentType'] as String?,
  fileSize: (json['FileSize'] as num).toInt(),
  uploadedAt: DateTime.parse(json['UploadedAt'] as String),
);

Map<String, dynamic> _$TicketAttachmentResponseToJson(
  _TicketAttachmentResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'TicketId': instance.ticketId,
  'FileUrl': instance.fileUrl,
  'FileName': instance.fileName,
  'ContentType': instance.contentType,
  'FileSize': instance.fileSize,
  'UploadedAt': instance.uploadedAt.toIso8601String(),
};
