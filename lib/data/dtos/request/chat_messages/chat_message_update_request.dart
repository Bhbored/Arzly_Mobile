import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_update_request.freezed.dart';
part 'chat_message_update_request.g.dart';

@freezed
sealed class ChatMessageUpdateRequest with _$ChatMessageUpdateRequest {
  const factory ChatMessageUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Text') required String text,
    @JsonKey(name: 'ReadAt') DateTime? readAt,
  }) = _ChatMessageUpdateRequest;

  factory ChatMessageUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageUpdateRequestFromJson(json);
}
