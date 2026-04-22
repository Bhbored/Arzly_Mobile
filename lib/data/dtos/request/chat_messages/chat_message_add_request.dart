import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_add_request.freezed.dart';
part 'chat_message_add_request.g.dart';

@freezed
sealed class ChatMessageAddRequest with _$ChatMessageAddRequest {
  const factory ChatMessageAddRequest({
    @JsonKey(name: 'ChatId') required String chatId,
    @JsonKey(name: 'SenderId') required String senderId,
    @JsonKey(name: 'ReceiverId') required String receiverId,
    @JsonKey(name: 'Text') required String text,
  }) = _ChatMessageAddRequest;

  factory ChatMessageAddRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageAddRequestFromJson(json);
}
