import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_message_update_request.freezed.dart';
part 'ticket_message_update_request.g.dart';

@freezed
sealed class TicketMessageUpdateRequest with _$TicketMessageUpdateRequest {
  const factory TicketMessageUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'IsInternalNote') required bool isInternalNote,
  }) = _TicketMessageUpdateRequest;

  factory TicketMessageUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketMessageUpdateRequestFromJson(json);
}
