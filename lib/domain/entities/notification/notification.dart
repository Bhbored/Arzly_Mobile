import 'package:arzly/core/enums/notification_action_type.dart';
import 'package:arzly/core/enums/notification_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification.freezed.dart';

@freezed
sealed class Notification with _$Notification {
  const factory Notification({
    required String id,
    String? userId,
    String? chatterId,
    String? listingId,
    required String title,
    required String body,
    required NotificationSource source,
    required bool isBroadcast,
    required bool isRead,
    required DateTime createdAt,
    DateTime? readAt,
    String? deepLink,
    required NotificationActionType actionType,
    String? metadata,
    DateTime? expiresAt,
  }) = _Notification;
}