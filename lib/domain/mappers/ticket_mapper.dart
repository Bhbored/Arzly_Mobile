import 'package:arzly/data/dtos/request/ticket/ticket_add_request.dart';
import 'package:arzly/data/dtos/request/ticket/ticket_update_request.dart';
import 'package:arzly/data/dtos/response/ticket/ticket_response.dart';
import 'package:arzly/domain/entities/ticket/ticket.dart';

extension TicketResponseMapper on TicketResponse {
  Ticket toEntity() => Ticket(
        id: id,
        subject: subject,
        status: status,
        priority: priority,
        createdAt: createdAt,
        lastUpdatedAt: lastUpdatedAt,
        closedAt: closedAt,
        userId: userId,
        assignedToId: assignedToId,
        listingId: listingId,
      );
}

extension TicketToAddRequestMapper on Ticket {
  TicketAddRequest toAddRequest() => TicketAddRequest(
        subject: subject,
        priority: priority,
        userId: userId,
        listingId: listingId,
      );
}

extension TicketToUpdateRequestMapper on Ticket {
  TicketUpdateRequest toUpdateRequest() => TicketUpdateRequest(
        id: id,
        subject: subject,
        status: status,
        priority: priority,
        closedAt: closedAt,
        assignedToId: assignedToId,
      );
}
