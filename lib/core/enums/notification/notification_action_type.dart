import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum NotificationActionType {
  @JsonValue('Announcement')
  announcement,
  @JsonValue('NewMessage')
  newMessage,
  @JsonValue('ListingApproved')
  listingApproved,
  @JsonValue('ListingRejected')
  listingRejected,
}
