// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferenceUpdateRequest _$UserPreferenceUpdateRequestFromJson(
  Map<String, dynamic> json,
) => _UserPreferenceUpdateRequest(
  theme: $enumDecode(_$ThemeModeEnumMap, json['Theme']),
  language: $enumDecode(_$LanguageCodeEnumMap, json['Language']),
  pushNotifications: json['PushNotifications'] as bool,
  emailNotifications: json['EmailNotifications'] as bool,
  updatedAt: DateTime.parse(json['UpdatedAt'] as String),
);

Map<String, dynamic> _$UserPreferenceUpdateRequestToJson(
  _UserPreferenceUpdateRequest instance,
) => <String, dynamic>{
  'Theme': _$ThemeModeEnumMap[instance.theme]!,
  'Language': _$LanguageCodeEnumMap[instance.language]!,
  'PushNotifications': instance.pushNotifications,
  'EmailNotifications': instance.emailNotifications,
  'UpdatedAt': instance.updatedAt.toIso8601String(),
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'System',
  ThemeMode.light: 'Light',
  ThemeMode.dark: 'Dark',
};

const _$LanguageCodeEnumMap = {
  LanguageCode.en: 'En',
  LanguageCode.ar: 'Ar',
  LanguageCode.fr: 'Fr',
};
