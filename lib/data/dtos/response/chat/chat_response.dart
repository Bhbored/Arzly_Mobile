import 'package:arzly/core/enums/chat_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

@freezed
sealed class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'ListingId') required String listingId,
    @JsonKey(name: 'ChatRole') required ChatRole chatRole,
    @JsonKey(name: 'IsArchived') required bool isArchived,
    @JsonKey(name: 'IsDeleted') required bool isDeleted,
    @JsonKey(name: 'IsDiscontinued') required bool isDiscontinued,
    @JsonKey(name: 'LastActivity') required DateTime lastActivity,
    @JsonKey(name: 'InitiatorId') required String initiatorId,
    @JsonKey(name: 'ReceiverId') required String receiverId,
  }) = _ChatResponse;
  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}
