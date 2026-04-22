import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_attachment_add_request.freezed.dart';
part 'ticket_attachment_add_request.g.dart';

@freezed
sealed class TicketAttachmentAddRequest with _$TicketAttachmentAddRequest {
  const factory TicketAttachmentAddRequest({
    @JsonKey(name: 'TicketId') required String ticketId,
    @JsonKey(name: 'FileUrl') required String fileUrl,
    @JsonKey(name: 'FileName') String? fileName,
    @JsonKey(name: 'ContentType') String? contentType,
    @JsonKey(name: 'FileSize') required int fileSize,
  }) = _TicketAttachmentAddRequest;

  factory TicketAttachmentAddRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketAttachmentAddRequestFromJson(json);
}
