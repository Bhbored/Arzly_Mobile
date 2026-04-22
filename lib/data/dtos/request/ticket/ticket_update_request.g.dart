// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketUpdateRequest _$TicketUpdateRequestFromJson(Map<String, dynamic> json) =>
    _TicketUpdateRequest(
      id: json['Id'] as String,
      subject: json['Subject'] as String,
      status: $enumDecode(_$TicketStatusEnumMap, json['Status']),
      priority: $enumDecode(_$TicketPriorityEnumMap, json['Priority']),
      closedAt: json['ClosedAt'] == null
          ? null
          : DateTime.parse(json['ClosedAt'] as String),
      assignedToId: json['AssignedToId'] as String?,
    );

Map<String, dynamic> _$TicketUpdateRequestToJson(
  _TicketUpdateRequest instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Subject': instance.subject,
  'Status': _$TicketStatusEnumMap[instance.status]!,
  'Priority': _$TicketPriorityEnumMap[instance.priority]!,
  'ClosedAt': instance.closedAt?.toIso8601String(),
  'AssignedToId': instance.assignedToId,
};

const _$TicketStatusEnumMap = {
  TicketStatus.open: 'Open',
  TicketStatus.inProgress: 'InProgress',
  TicketStatus.resolved: 'Resolved',
  TicketStatus.closed: 'Closed',
};

const _$TicketPriorityEnumMap = {
  TicketPriority.low: 'Low',
  TicketPriority.medium: 'Medium',
  TicketPriority.high: 'High',
  TicketPriority.urgent: 'Urgent',
};
