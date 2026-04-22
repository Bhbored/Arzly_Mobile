import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ActivityTargetType {
  @JsonValue('None')
  none,
  @JsonValue('User')
  user,
  @JsonValue('Listing')
  listing,
  @JsonValue('Chat')
  chat,
  @JsonValue('Message')
  message,
  @JsonValue('Ticket')
  ticket,
  @JsonValue('Report')
  report,
  @JsonValue('PickupLocation')
  pickupLocation,
  @JsonValue('SavedListing')
  savedListing,
  @JsonValue('SearchQuery')
  searchQuery,
  @JsonValue('UserPreference')
  userPreference,
}
