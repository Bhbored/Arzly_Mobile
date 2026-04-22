import 'package:arzly/data/dtos/request/chat_messages/chat_message_add_request.dart';
import 'package:arzly/data/dtos/request/chat_messages/chat_message_update_request.dart';
import 'package:arzly/data/dtos/response/chat_messages/chat_messages_response.dart';
import 'package:arzly/domain/entities/chat_messages/chat_message.dart';

extension ChatMessageResponseMapper on ChatMessageResponse {
  ChatMessage toEntity() => ChatMessage(
        id: id,
        chatId: chatId,
        senderId: senderId,
        receiverId: receiverId,
        text: text,
        sentAt: sentAt,
        isRead: isRead,
        readAt: readAt,
      );
}

extension ChatMessageToAddRequestMapper on ChatMessage {
  ChatMessageAddRequest toAddRequest() => ChatMessageAddRequest(
        chatId: chatId,
        senderId: senderId,
        receiverId: receiverId,
        text: text,
      );
}

extension ChatMessageToUpdateRequestMapper on ChatMessage {
  ChatMessageUpdateRequest toUpdateRequest() => ChatMessageUpdateRequest(
        id: id,
        text: text,
        readAt: readAt,
      );
}
