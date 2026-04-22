import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_attachment_response.freezed.dart';
part 'ticket_attachment_response.g.dart';

@freezed
sealed class TicketAttachmentResponse with _$TicketAttachmentResponse {
  const factory TicketAttachmentResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'TicketId') required String ticketId,
    @JsonKey(name: 'FileUrl') required String fileUrl,
    @JsonKey(name: 'FileName') String? fileName,
    @JsonKey(name: 'ContentType') String? contentType,
    @JsonKey(name: 'FileSize') required int fileSize,
    @JsonKey(name: 'UploadedAt') required DateTime uploadedAt,
  }) = _TicketAttachmentResponse;

  factory TicketAttachmentResponse.fromJson(Map<String, dynamic> json) =>
      _$TicketAttachmentResponseFromJson(json);
}
