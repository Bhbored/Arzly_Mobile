import 'package:arzly/core/enums/preference/language_code.dart';
import 'package:arzly/core/enums/preference/theme_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preference_response.freezed.dart';
part 'user_preference_response.g.dart';

@freezed
sealed class UserPreferenceResponse with _$UserPreferenceResponse {
  const factory UserPreferenceResponse({
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'Theme') required ThemeMode theme,
    @JsonKey(name: 'Language') required LanguageCode language,
    @JsonKey(name: 'PushNotifications') required bool pushNotifications,
    @JsonKey(name: 'EmailNotifications') required bool emailNotifications,
    @JsonKey(name: 'UpdatedAt') required DateTime updatedAt,
  }) = _UserPreferenceResponse;

  factory UserPreferenceResponse.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceResponseFromJson(json);
}
