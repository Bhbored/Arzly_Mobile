import 'package:arzly/core/enums/chat_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_add_request.freezed.dart';
part 'chat_add_request.g.dart';

@freezed
sealed class ChatAddRequest with _$ChatAddRequest {
  const factory ChatAddRequest({
    @JsonKey(name: 'ContextRole') required ChatRole contextRole,
    @JsonKey(name: 'InitiatorId') required String initiatorId,
    @JsonKey(name: 'ReceiverId') required String receiverId,
    @JsonKey(name: 'ListingId') required String listingId,
  }) = _ChatAddRequest;

  factory ChatAddRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatAddRequestFromJson(json);
}
