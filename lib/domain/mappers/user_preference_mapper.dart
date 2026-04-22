import 'package:arzly/data/dtos/request/user_preference/user_preference_update_request.dart';
import 'package:arzly/data/dtos/response/user_preference/user_preference_response.dart';
import 'package:arzly/domain/entities/user_preference/user_preference.dart';

extension UserPreferenceResponseMapper on UserPreferenceResponse {
  UserPreference toEntity() => UserPreference(
    userId: userId,
    theme: theme,
    language: language,
    pushNotifications: pushNotifications,
    emailNotifications: emailNotifications,
    updatedAt: updatedAt,
  );
}

extension UserPreferenceToUpdateRequestMapper on UserPreference {
  UserPreferenceUpdateRequest toUpdateRequest() => UserPreferenceUpdateRequest(
    theme: theme,
    language: language,
    pushNotifications: pushNotifications,
    emailNotifications: emailNotifications,
    updatedAt: updatedAt,
  );
}
