import 'package:arzly/shared/enums/language_code.dart';
import 'package:arzly/shared/enums/theme_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.g.dart';
part 'user_preferences.freezed.dart';

@freezed
sealed class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required ThemeMode theme,
    required LanguageCode language,
    required bool pushNotifications,
    required bool emailNotifications,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}
