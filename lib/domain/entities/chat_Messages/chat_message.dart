import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.g.dart';
part 'chat_message.freezed.dart';

@freezed
sealed class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String senderId,
    required String text,
    required DateTime sentAt,
    required bool isRead,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
