import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_message_response.freezed.dart';
part 'ticket_message_response.g.dart';

@freezed
sealed class TicketMessageResponse with _$TicketMessageResponse {
  const factory TicketMessageResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'TicketId') required String ticketId,
    @JsonKey(name: 'SenderId') required String senderId,
    @JsonKey(name: 'ReceiverId') required String receiverId,
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'SentAt') required DateTime sentAt,
    @JsonKey(name: 'IsInternalNote') required bool isInternalNote,
  }) = _TicketMessageResponse;

  factory TicketMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$TicketMessageResponseFromJson(json);
}
