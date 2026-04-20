import 'package:arzly/core/enums/chat_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.g.dart';
part 'chat.freezed.dart';

@freezed
sealed class Chat with _$Chat {
  const factory Chat({
    required String id,
    String? listingId,
    required ChatRole contextRole,
    required bool isArchived,
    required DateTime lastActivity,
    required int unreadCount,
    @Default('') String lastMessagePreview,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
