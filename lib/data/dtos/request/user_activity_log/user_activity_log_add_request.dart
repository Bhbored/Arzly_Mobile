import 'package:arzly/core/enums/activity_action_type.dart';
import 'package:arzly/core/enums/activity_target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_activity_log_add_request.freezed.dart';
part 'user_activity_log_add_request.g.dart';

@freezed
sealed class UserActivityLogAddRequest with _$UserActivityLogAddRequest {
  const factory UserActivityLogAddRequest({
    @JsonKey(name: 'ActorId') required String actorId,
    @JsonKey(name: 'ActorRole') required String actorRole,
    @JsonKey(name: 'ActionType') required ActivityActionType actionType,
    @JsonKey(name: 'TargetType') required ActivityTargetType targetType,
    @JsonKey(name: 'TargetId') String? targetId,
    @JsonKey(name: 'IPAddress') String? ipAddress,
    @JsonKey(name: 'UserAgent') String? userAgent,
    @JsonKey(name: 'Details') String? details,
    @JsonKey(name: 'IsSuccess') required bool isSuccess,
    @JsonKey(name: 'ErrorMessage') String? errorMessage,
    @JsonKey(name: 'DurationMs') int? durationMs,
  }) = _UserActivityLogAddRequest;

  factory UserActivityLogAddRequest.fromJson(Map<String, dynamic> json) =>
      _$UserActivityLogAddRequestFromJson(json);
}
