import 'package:arzly/core/enums/ticket/ticket_priority.dart';
import 'package:arzly/core/enums/ticket/ticket_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_response.freezed.dart';
part 'ticket_response.g.dart';

@freezed
sealed class TicketResponse with _$TicketResponse {
  const factory TicketResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Subject') required String subject,
    @JsonKey(name: 'Status') required TicketStatus status,
    @JsonKey(name: 'Priority') required TicketPriority priority,
    @JsonKey(name: 'CreatedAt') required DateTime createdAt,
    @JsonKey(name: 'LastUpdatedAt') DateTime? lastUpdatedAt,
    @JsonKey(name: 'ClosedAt') DateTime? closedAt,
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'AssignedToId') String? assignedToId,
    @JsonKey(name: 'ListingId') String? listingId,
  }) = _TicketResponse;

  factory TicketResponse.fromJson(Map<String, dynamic> json) =>
      _$TicketResponseFromJson(json);
}
