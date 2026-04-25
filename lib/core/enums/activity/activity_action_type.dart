import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ActivityActionType {
  @JsonValue('Login')
  login,
  @JsonValue('Logout')
  logout,
  @JsonValue('Register')
  register,
  @JsonValue('PasswordChanged')
  passwordChanged,

  @JsonValue('ProfileUpdated')
  profileUpdated,
  @JsonValue('ProfilePictureUpdated')
  profilePictureUpdated,
  @JsonValue('AccountDeleted')
  accountDeleted,

  @JsonValue('ListingCreated')
  listingCreated,
  @JsonValue('ListingUpdated')
  listingUpdated,
  @JsonValue('ListingDeleted')
  listingDeleted,
  @JsonValue('ListingViewed')
  listingViewed,
  @JsonValue('ListingShared')
  listingShared,

  @JsonValue('ListingSaved')
  listingSaved,
  @JsonValue('ListingUnsaved')
  listingUnsaved,

  @JsonValue('ChatStarted')
  chatStarted,
  @JsonValue('MessageSent')
  messageSent,
  @JsonValue('MessageRead')
  messageRead,
  @JsonValue('ChatArchived')
  chatArchived,

  @JsonValue('ReportSubmitted')
  reportSubmitted,

  @JsonValue('TicketCreated')
  ticketCreated,
  @JsonValue('TicketMessageSent')
  ticketMessageSent,
}
