import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_message.freezed.dart';

@freezed
sealed class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String chatId,
    required String senderId,
    required String receiverId,
    required String text,
    required DateTime sentAt,
    required bool isRead,
    DateTime? readAt,
  }) = _ChatMessage;
}