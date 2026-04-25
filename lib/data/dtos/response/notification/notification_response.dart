import 'package:arzly/core/enums/notification/notification_action_type.dart';
import 'package:arzly/core/enums/notification/notification_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
sealed class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'UserId') String? userId,
    @JsonKey(name: 'ChatterId') String? chatterId,
    @JsonKey(name: 'ListingId') String? listingId,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Body') required String body,
    @JsonKey(name: 'Source') required NotificationSource source,
    @JsonKey(name: 'IsBroadcast') required bool isBroadcast,
    @JsonKey(name: 'IsRead') required bool isRead,
    @JsonKey(name: 'CreatedAt') required DateTime createdAt,
    @JsonKey(name: 'ReadAt') DateTime? readAt,
    @JsonKey(name: 'DeepLink') String? deepLink,
    @JsonKey(name: 'ActionType') required NotificationActionType actionType,
    @JsonKey(name: 'Metadata') String? metadata,
    @JsonKey(name: 'ExpiresAt') DateTime? expiresAt,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}
