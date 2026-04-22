import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_messages_response.g.dart';
part 'chat_messages_response.freezed.dart';

@freezed
sealed class ChatMessageResponse with _$ChatMessageResponse {
  const factory ChatMessageResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'ChatId') required String chatId,
    @JsonKey(name: 'SenderId') required String senderId,
    @JsonKey(name: 'ReceiverId') required String receiverId,
    @JsonKey(name: 'Text') required String text,
    @JsonKey(name: 'SentAt') required DateTime sentAt,
    @JsonKey(name: 'IsRead') required bool isRead,
    @JsonKey(name: 'ReadAt') DateTime? readAt,
  }) = _ChatMessageResponse;

  factory ChatMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageResponseFromJson(json);
}
