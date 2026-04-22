import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket_message.freezed.dart';

@freezed
sealed class TicketMessage with _$TicketMessage {
  const factory TicketMessage({
    required String id,
    required String ticketId,
    required String senderId,
    required String receiverId,
    required String message,
    required DateTime sentAt,
    required bool isInternalNote,
  }) = _TicketMessage;
}