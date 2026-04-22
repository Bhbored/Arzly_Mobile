// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatUpdateRequest _$ChatUpdateRequestFromJson(Map<String, dynamic> json) =>
    _ChatUpdateRequest(
      id: json['Id'] as String,
      isArchived: json['IsArchived'] as bool,
      isDeleted: json['IsDeleted'] as bool,
      isDiscontinued: json['IsDiscontinued'] as bool,
      lastActivity: DateTime.parse(json['LastActivity'] as String),
    );

Map<String, dynamic> _$ChatUpdateRequestToJson(_ChatUpdateRequest instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'IsArchived': instance.isArchived,
      'IsDeleted': instance.isDeleted,
      'IsDiscontinued': instance.isDiscontinued,
      'LastActivity': instance.lastActivity.toIso8601String(),
    };
