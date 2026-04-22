import 'package:arzly/core/enums/ticket_priority.dart';
import 'package:arzly/core/enums/ticket_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket.freezed.dart';

@freezed
sealed class Ticket with _$Ticket {
  const factory Ticket({
    required String id,
    required String subject,
    required TicketStatus status,
    required TicketPriority priority,
    required DateTime createdAt,
    DateTime? lastUpdatedAt,
    DateTime? closedAt,
    required String userId,
    String? assignedToId,
    String? listingId,
  }) = _Ticket;
}