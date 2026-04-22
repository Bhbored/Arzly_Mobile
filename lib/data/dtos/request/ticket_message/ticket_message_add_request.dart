import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_message_add_request.freezed.dart';
part 'ticket_message_add_request.g.dart';

@freezed
sealed class TicketMessageAddRequest with _$TicketMessageAddRequest {
  const factory TicketMessageAddRequest({
    @JsonKey(name: 'TicketId') required String ticketId,
    @JsonKey(name: 'SenderId') required String senderId,
    @JsonKey(name: 'ReceiverId') required String receiverId,
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'IsInternalNote') required bool isInternalNote,
  }) = _TicketMessageAddRequest;

  factory TicketMessageAddRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketMessageAddRequestFromJson(json);
}
