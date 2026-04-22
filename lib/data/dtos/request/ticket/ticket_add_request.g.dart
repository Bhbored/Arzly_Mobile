// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketAddRequest _$TicketAddRequestFromJson(Map<String, dynamic> json) =>
    _TicketAddRequest(
      subject: json['Subject'] as String,
      priority: $enumDecode(_$TicketPriorityEnumMap, json['Priority']),
      userId: json['UserId'] as String,
      listingId: json['ListingId'] as String?,
    );

Map<String, dynamic> _$TicketAddRequestToJson(_TicketAddRequest instance) =>
    <String, dynamic>{
      'Subject': instance.subject,
      'Priority': _$TicketPriorityEnumMap[instance.priority]!,
      'UserId': instance.userId,
      'ListingId': instance.listingId,
    };

const _$TicketPriorityEnumMap = {
  TicketPriority.low: 'Low',
  TicketPriority.medium: 'Medium',
  TicketPriority.high: 'High',
  TicketPriority.urgent: 'Urgent',
};
