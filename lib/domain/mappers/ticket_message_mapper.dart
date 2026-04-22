import 'package:arzly/data/dtos/request/ticket_message/ticket_message_add_request.dart';
import 'package:arzly/data/dtos/request/ticket_message/ticket_message_update_request.dart';
import 'package:arzly/data/dtos/response/ticket_message/ticket_message_response.dart';
import 'package:arzly/domain/entities/ticket_message/ticket_message.dart';

extension TicketMessageResponseMapper on TicketMessageResponse {
  TicketMessage toEntity() => TicketMessage(
        id: id,
        ticketId: ticketId,
        senderId: senderId,
        receiverId: receiverId,
        message: message,
        sentAt: sentAt,
        isInternalNote: isInternalNote,
      );
}

extension TicketMessageToAddRequestMapper on TicketMessage {
  TicketMessageAddRequest toAddRequest() => TicketMessageAddRequest(
        ticketId: ticketId,
        senderId: senderId,
        receiverId: receiverId,
        message: message,
        isInternalNote: isInternalNote,
      );
}

extension TicketMessageToUpdateRequestMapper on TicketMessage {
  TicketMessageUpdateRequest toUpdateRequest() => TicketMessageUpdateRequest(
        id: id,
        message: message,
        isInternalNote: isInternalNote,
      );
}
