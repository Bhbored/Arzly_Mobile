import 'package:arzly/domain/entities/delivery_Preferences/delivery_location.dart';
import 'package:arzly/domain/entities/delivery_Preferences/user_preferences.dart';
import 'package:arzly/shared/enums/auth_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.g.dart';
part 'app_user.freezed.dart';

@freezed
sealed class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required AuthMethod authMethod,
    String? firebaseUid,
    String? publicName,
    String? publicLocation,
    String? profileImageUrl,
    required DateTime createdAt,
    @Default([]) List<DeliveryLocation> deliveryLocations,
    @Default([]) List<String> searchHistory,
    UserPreferences? preferences,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
