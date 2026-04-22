import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_attachment_update_request.freezed.dart';
part 'ticket_attachment_update_request.g.dart';

@freezed
sealed class TicketAttachmentUpdateRequest
    with _$TicketAttachmentUpdateRequest {
  const factory TicketAttachmentUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'FileName') String? fileName,
    @JsonKey(name: 'ContentType') String? contentType,
  }) = _TicketAttachmentUpdateRequest;

  factory TicketAttachmentUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketAttachmentUpdateRequestFromJson(json);
}
