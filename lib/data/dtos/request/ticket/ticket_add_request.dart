import 'package:arzly/core/enums/ticket/ticket_priority.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_add_request.freezed.dart';
part 'ticket_add_request.g.dart';

@freezed
sealed class TicketAddRequest with _$TicketAddRequest {
  const factory TicketAddRequest({
    @JsonKey(name: 'Subject') required String subject,
    @JsonKey(name: 'Priority') required TicketPriority priority,
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'ListingId') String? listingId,
  }) = _TicketAddRequest;

  factory TicketAddRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketAddRequestFromJson(json);
}
