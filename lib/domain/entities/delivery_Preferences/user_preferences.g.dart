// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) =>
    _UserPreferences(
      theme: $enumDecode(_$ThemeModeEnumMap, json['theme']),
      language: $enumDecode(_$LanguageCodeEnumMap, json['language']),
      pushNotifications: json['pushNotifications'] as bool,
      emailNotifications: json['emailNotifications'] as bool,
    );

Map<String, dynamic> _$UserPreferencesToJson(_UserPreferences instance) =>
    <String, dynamic>{
      'theme': _$ThemeModeEnumMap[instance.theme]!,
      'language': _$LanguageCodeEnumMap[instance.language]!,
      'pushNotifications': instance.pushNotifications,
      'emailNotifications': instance.emailNotifications,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$LanguageCodeEnumMap = {
  LanguageCode.en: 'en',
  LanguageCode.ar: 'ar',
  LanguageCode.fr: 'fr',
};
