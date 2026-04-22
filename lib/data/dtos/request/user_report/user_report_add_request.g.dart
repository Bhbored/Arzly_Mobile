// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_report_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserReportAddRequest _$UserReportAddRequestFromJson(
  Map<String, dynamic> json,
) => _UserReportAddRequest(
  reporterId: json['ReporterId'] as String,
  reportedUserId: json['ReportedUserId'] as String,
  chatId: json['ChatId'] as String?,
  reason: $enumDecode(_$ReportReasonTypeEnumMap, json['Reason']),
  notes: json['Notes'] as String?,
);

Map<String, dynamic> _$UserReportAddRequestToJson(
  _UserReportAddRequest instance,
) => <String, dynamic>{
  'ReporterId': instance.reporterId,
  'ReportedUserId': instance.reportedUserId,
  'ChatId': instance.chatId,
  'Reason': _$ReportReasonTypeEnumMap[instance.reason]!,
  'Notes': instance.notes,
};

const _$ReportReasonTypeEnumMap = {
  ReportReasonType.spam: 'Spam',
  ReportReasonType.harassment: 'Harassment',
  ReportReasonType.fraud: 'Fraud',
  ReportReasonType.inappropriateContent: 'InappropriateContent',
  ReportReasonType.fakeListing: 'FakeListing',
  ReportReasonType.other: 'Other',
};
