import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket_attachment.freezed.dart';

@freezed
sealed class TicketAttachment with _$TicketAttachment {
  const factory TicketAttachment({
    required String id,
    required String ticketId,
    required String fileUrl,
    String? fileName,
    String? contentType,
    required int fileSize,
    required DateTime uploadedAt,
  }) = _TicketAttachment;
}