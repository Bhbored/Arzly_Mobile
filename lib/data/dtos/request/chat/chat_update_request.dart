import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_update_request.freezed.dart';
part 'chat_update_request.g.dart';

@freezed
sealed class ChatUpdateRequest with _$ChatUpdateRequest {
  const factory ChatUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'IsArchived') required bool isArchived,
    @JsonKey(name: 'IsDeleted') required bool isDeleted,
    @JsonKey(name: 'IsDiscontinued') required bool isDiscontinued,
    @JsonKey(name: 'LastActivity') required DateTime lastActivity,
  }) = _ChatUpdateRequest;

  factory ChatUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatUpdateRequestFromJson(json);
}
