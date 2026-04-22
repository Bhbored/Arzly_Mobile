import 'package:arzly/data/dtos/response/notification/notification_response.dart';
import 'package:arzly/domain/entities/notification/notification.dart';

extension NotificationResponseMapper on NotificationResponse {
  Notification toEntity() => Notification(
        id: id,
        userId: userId,
        chatterId: chatterId,
        listingId: listingId,
        title: title,
        body: body,
        source: source,
        isBroadcast: isBroadcast,
        isRead: isRead,
        createdAt: createdAt,
        readAt: readAt,
        deepLink: deepLink,
        actionType: actionType,
        metadata: metadata,
        expiresAt: expiresAt,
      );
}
