import 'package:arzly/core/enums/preference/language_code.dart';
import 'package:arzly/core/enums/preference/theme_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_preference.freezed.dart';

@freezed
sealed class UserPreference with _$UserPreference {
  const factory UserPreference({
    required String userId,
    required ThemeMode theme,
    required LanguageCode language,
    required bool pushNotifications,
    required bool emailNotifications,
    required DateTime updatedAt,
  }) = _UserPreference;
}
