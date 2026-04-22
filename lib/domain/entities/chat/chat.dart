import 'package:arzly/core/enums/chat_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat.freezed.dart';

@freezed
sealed class Chat with _$Chat {
  const factory Chat({
    required String id,
    required String listingId,
    required ChatRole chatRole,
    required bool isArchived,
    required bool isDeleted,
    required bool isDiscontinued,
    required DateTime lastActivity,
    required String initiatorId,
    required String receiverId,
  }) = _Chat;
}