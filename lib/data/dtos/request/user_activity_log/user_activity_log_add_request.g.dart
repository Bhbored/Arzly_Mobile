// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_activity_log_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserActivityLogAddRequest _$UserActivityLogAddRequestFromJson(
  Map<String, dynamic> json,
) => _UserActivityLogAddRequest(
  actorId: json['ActorId'] as String,
  actorRole: json['ActorRole'] as String,
  actionType: $enumDecode(_$ActivityActionTypeEnumMap, json['ActionType']),
  targetType: $enumDecode(_$ActivityTargetTypeEnumMap, json['TargetType']),
  targetId: json['TargetId'] as String?,
  ipAddress: json['IPAddress'] as String?,
  userAgent: json['UserAgent'] as String?,
  details: json['Details'] as String?,
  isSuccess: json['IsSuccess'] as bool,
  errorMessage: json['ErrorMessage'] as String?,
  durationMs: (json['DurationMs'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserActivityLogAddRequestToJson(
  _UserActivityLogAddRequest instance,
) => <String, dynamic>{
  'ActorId': instance.actorId,
  'ActorRole': instance.actorRole,
  'ActionType': _$ActivityActionTypeEnumMap[instance.actionType]!,
  'TargetType': _$ActivityTargetTypeEnumMap[instance.targetType]!,
  'TargetId': instance.targetId,
  'IPAddress': instance.ipAddress,
  'UserAgent': instance.userAgent,
  'Details': instance.details,
  'IsSuccess': instance.isSuccess,
  'ErrorMessage': instance.errorMessage,
  'DurationMs': instance.durationMs,
};

const _$ActivityActionTypeEnumMap = {
  ActivityActionType.login: 'Login',
  ActivityActionType.logout: 'Logout',
  ActivityActionType.register: 'Register',
  ActivityActionType.passwordChanged: 'PasswordChanged',
  ActivityActionType.passwordReset: 'PasswordReset',
  ActivityActionType.profileUpdated: 'ProfileUpdated',
  ActivityActionType.profilePictureUpdated: 'ProfilePictureUpdated',
  ActivityActionType.accountDeleted: 'AccountDeleted',
  ActivityActionType.listingCreated: 'ListingCreated',
  ActivityActionType.listingUpdated: 'ListingUpdated',
  ActivityActionType.listingDeleted: 'ListingDeleted',
  ActivityActionType.listingViewed: 'ListingViewed',
  ActivityActionType.listingShared: 'ListingShared',
  ActivityActionType.listingSaved: 'ListingSaved',
  ActivityActionType.listingUnsaved: 'ListingUnsaved',
  ActivityActionType.chatStarted: 'ChatStarted',
  ActivityActionType.messageSent: 'MessageSent',
  ActivityActionType.messageRead: 'MessageRead',
  ActivityActionType.chatArchived: 'ChatArchived',
  ActivityActionType.reportSubmitted: 'ReportSubmitted',
  ActivityActionType.reportResolved: 'ReportResolved',
  ActivityActionType.reportDismissed: 'ReportDismissed',
  ActivityActionType.ticketCreated: 'TicketCreated',
  ActivityActionType.ticketMessageSent: 'TicketMessageSent',
  ActivityActionType.ticketClosed: 'TicketClosed',
  ActivityActionType.ticketReopened: 'TicketReopened',
  ActivityActionType.userBanned: 'UserBanned',
  ActivityActionType.userUnbanned: 'UserUnbanned',
  ActivityActionType.listingFlagged: 'ListingFlagged',
  ActivityActionType.listingUnflagged: 'ListingUnflagged',
};

const _$ActivityTargetTypeEnumMap = {
  ActivityTargetType.none: 'None',
  ActivityTargetType.user: 'User',
  ActivityTargetType.listing: 'Listing',
  ActivityTargetType.chat: 'Chat',
  ActivityTargetType.message: 'Message',
  ActivityTargetType.ticket: 'Ticket',
  ActivityTargetType.report: 'Report',
  ActivityTargetType.pickupLocation: 'PickupLocation',
  ActivityTargetType.savedListing: 'SavedListing',
  ActivityTargetType.searchQuery: 'SearchQuery',
  ActivityTargetType.userPreference: 'UserPreference',
  ActivityTargetType.notification: 'Notification',
};
