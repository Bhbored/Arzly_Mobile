import 'package:arzly/core/enums/ticket_priority.dart';
import 'package:arzly/core/enums/ticket_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_update_request.freezed.dart';
part 'ticket_update_request.g.dart';

@freezed
sealed class TicketUpdateRequest with _$TicketUpdateRequest {
  const factory TicketUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Subject') required String subject,
    @JsonKey(name: 'Status') required TicketStatus status,
    @JsonKey(name: 'Priority') required TicketPriority priority,
    @JsonKey(name: 'ClosedAt') DateTime? closedAt,
    @JsonKey(name: 'AssignedToId') String? assignedToId,
  }) = _TicketUpdateRequest;

  factory TicketUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketUpdateRequestFromJson(json);
}
