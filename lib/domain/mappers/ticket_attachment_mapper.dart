import 'package:arzly/data/dtos/request/ticket_attachment/ticket_attachment_add_request.dart';
import 'package:arzly/data/dtos/request/ticket_attachment/ticket_attachment_update_request.dart';
import 'package:arzly/data/dtos/response/ticket_attachment/ticket_attachment_response.dart';
import 'package:arzly/domain/entities/ticket_attachment/ticket_attachment.dart';

extension TicketAttachmentResponseMapper on TicketAttachmentResponse {
  TicketAttachment toEntity() => TicketAttachment(
        id: id,
        ticketId: ticketId,
        fileUrl: fileUrl,
        fileName: fileName,
        contentType: contentType,
        fileSize: fileSize,
        uploadedAt: uploadedAt,
      );
}

extension TicketAttachmentToAddRequestMapper on TicketAttachment {
  TicketAttachmentAddRequest toAddRequest() => TicketAttachmentAddRequest(
        ticketId: ticketId,
        fileUrl: fileUrl,
        fileName: fileName,
        contentType: contentType,
        fileSize: fileSize,
      );
}

extension TicketAttachmentToUpdateRequestMapper on TicketAttachment {
  TicketAttachmentUpdateRequest toUpdateRequest() => TicketAttachmentUpdateRequest(
        id: id,
        fileName: fileName,
        contentType: contentType,
      );
}
