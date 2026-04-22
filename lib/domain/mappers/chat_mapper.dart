import 'package:arzly/data/dtos/request/chat/chat_add_request.dart';
import 'package:arzly/data/dtos/request/chat/chat_update_request.dart';
import 'package:arzly/data/dtos/response/chat/chat_response.dart';
import 'package:arzly/domain/entities/chat/chat.dart';

extension ChatResponseMapper on ChatResponse {
  Chat toEntity() => Chat(
        id: id,
        listingId: listingId,
        chatRole: chatRole,
        isArchived: isArchived,
        isDeleted: isDeleted,
        isDiscontinued: isDiscontinued,
        lastActivity: lastActivity,
        initiatorId: initiatorId,
        receiverId: receiverId,
      );
}

extension ChatToAddRequestMapper on Chat {
  ChatAddRequest toAddRequest() => ChatAddRequest(
        contextRole: chatRole,
        initiatorId: initiatorId,
        receiverId: receiverId,
        listingId: listingId,
      );
}

extension ChatToUpdateRequestMapper on Chat {
  ChatUpdateRequest toUpdateRequest() => ChatUpdateRequest(
        id: id,
        isArchived: isArchived,
        isDeleted: isDeleted,
        isDiscontinued: isDiscontinued,
        lastActivity: lastActivity,
      );
}
