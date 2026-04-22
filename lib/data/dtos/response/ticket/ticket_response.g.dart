// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketResponse _$TicketResponseFromJson(Map<String, dynamic> json) =>
    _TicketResponse(
      id: json['Id'] as String,
      subject: json['Subject'] as String,
      status: $enumDecode(_$TicketStatusEnumMap, json['Status']),
      priority: $enumDecode(_$TicketPriorityEnumMap, json['Priority']),
      createdAt: DateTime.parse(json['CreatedAt'] as String),
      lastUpdatedAt: json['LastUpdatedAt'] == null
          ? null
          : DateTime.parse(json['LastUpdatedAt'] as String),
      closedAt: json['ClosedAt'] == null
          ? null
          : DateTime.parse(json['ClosedAt'] as String),
      userId: json['UserId'] as String,
      assignedToId: json['AssignedToId'] as String?,
      listingId: json['ListingId'] as String?,
    );

Map<String, dynamic> _$TicketResponseToJson(_TicketResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Subject': instance.subject,
      'Status': _$TicketStatusEnumMap[instance.status]!,
      'Priority': _$TicketPriorityEnumMap[instance.priority]!,
      'CreatedAt': instance.createdAt.toIso8601String(),
      'LastUpdatedAt': instance.lastUpdatedAt?.toIso8601String(),
      'ClosedAt': instance.closedAt?.toIso8601String(),
      'UserId': instance.userId,
      'AssignedToId': instance.assignedToId,
      'ListingId': instance.listingId,
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
