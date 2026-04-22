import 'package:arzly/core/enums/language_code.dart';
import 'package:arzly/core/enums/theme_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preference_update_request.freezed.dart';
part 'user_preference_update_request.g.dart';

@freezed
sealed class UserPreferenceUpdateRequest with _$UserPreferenceUpdateRequest {
  const factory UserPreferenceUpdateRequest({
    @JsonKey(name: 'Theme') required ThemeMode theme,
    @JsonKey(name: 'Language') required LanguageCode language,
    @JsonKey(name: 'PushNotifications') required bool pushNotifications,
    @JsonKey(name: 'EmailNotifications') required bool emailNotifications,
    @JsonKey(name: 'UpdatedAt') required DateTime updatedAt,
  }) = _UserPreferenceUpdateRequest;

  factory UserPreferenceUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceUpdateRequestFromJson(json);
}
