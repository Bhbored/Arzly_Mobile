// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_activity_log_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserActivityLogAddRequest {

@JsonKey(name: 'ActorId') String get actorId;@JsonKey(name: 'ActorRole') String get actorRole;@JsonKey(name: 'ActionType') ActivityActionType get actionType;@JsonKey(name: 'TargetType') ActivityTargetType get targetType;@JsonKey(name: 'TargetId') String? get targetId;@JsonKey(name: 'IPAddress') String? get ipAddress;@JsonKey(name: 'UserAgent') String? get userAgent;@JsonKey(name: 'Details') String? get details;@JsonKey(name: 'IsSuccess') bool get isSuccess;@JsonKey(name: 'ErrorMessage') String? get errorMessage;@JsonKey(name: 'DurationMs') int? get durationMs;
/// Create a copy of UserActivityLogAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserActivityLogAddRequestCopyWith<UserActivityLogAddRequest> get copyWith => _$UserActivityLogAddRequestCopyWithImpl<UserActivityLogAddRequest>(this as UserActivityLogAddRequest, _$identity);

  /// Serializes this UserActivityLogAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserActivityLogAddRequest&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.details, details) || other.details == details)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actorId,actorRole,actionType,targetType,targetId,ipAddress,userAgent,details,isSuccess,errorMessage,durationMs);

@override
String toString() {
  return 'UserActivityLogAddRequest(actorId: $actorId, actorRole: $actorRole, actionType: $actionType, targetType: $targetType, targetId: $targetId, ipAddress: $ipAddress, userAgent: $userAgent, details: $details, isSuccess: $isSuccess, errorMessage: $errorMessage, durationMs: $durationMs)';
}


}

/// @nodoc
abstract mixin class $UserActivityLogAddRequestCopyWith<$Res>  {
  factory $UserActivityLogAddRequestCopyWith(UserActivityLogAddRequest value, $Res Function(UserActivityLogAddRequest) _then) = _$UserActivityLogAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ActorId') String actorId,@JsonKey(name: 'ActorRole') String actorRole,@JsonKey(name: 'ActionType') ActivityActionType actionType,@JsonKey(name: 'TargetType') ActivityTargetType targetType,@JsonKey(name: 'TargetId') String? targetId,@JsonKey(name: 'IPAddress') String? ipAddress,@JsonKey(name: 'UserAgent') String? userAgent,@JsonKey(name: 'Details') String? details,@JsonKey(name: 'IsSuccess') bool isSuccess,@JsonKey(name: 'ErrorMessage') String? errorMessage,@JsonKey(name: 'DurationMs') int? durationMs
});




}
/// @nodoc
class _$UserActivityLogAddRequestCopyWithImpl<$Res>
    implements $UserActivityLogAddRequestCopyWith<$Res> {
  _$UserActivityLogAddRequestCopyWithImpl(this._self, this._then);

  final UserActivityLogAddRequest _self;
  final $Res Function(UserActivityLogAddRequest) _then;

/// Create a copy of UserActivityLogAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? actorId = null,Object? actorRole = null,Object? actionType = null,Object? targetType = null,Object? targetId = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,Object? details = freezed,Object? isSuccess = null,Object? errorMessage = freezed,Object? durationMs = freezed,}) {
  return _then(_self.copyWith(
actorId: null == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as ActivityActionType,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ActivityTargetType,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserActivityLogAddRequest].
extension UserActivityLogAddRequestPatterns on UserActivityLogAddRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserActivityLogAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserActivityLogAddRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserActivityLogAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _UserActivityLogAddRequest():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserActivityLogAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UserActivityLogAddRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ActorId')  String actorId, @JsonKey(name: 'ActorRole')  String actorRole, @JsonKey(name: 'ActionType')  ActivityActionType actionType, @JsonKey(name: 'TargetType')  ActivityTargetType targetType, @JsonKey(name: 'TargetId')  String? targetId, @JsonKey(name: 'IPAddress')  String? ipAddress, @JsonKey(name: 'UserAgent')  String? userAgent, @JsonKey(name: 'Details')  String? details, @JsonKey(name: 'IsSuccess')  bool isSuccess, @JsonKey(name: 'ErrorMessage')  String? errorMessage, @JsonKey(name: 'DurationMs')  int? durationMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserActivityLogAddRequest() when $default != null:
return $default(_that.actorId,_that.actorRole,_that.actionType,_that.targetType,_that.targetId,_that.ipAddress,_that.userAgent,_that.details,_that.isSuccess,_that.errorMessage,_that.durationMs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ActorId')  String actorId, @JsonKey(name: 'ActorRole')  String actorRole, @JsonKey(name: 'ActionType')  ActivityActionType actionType, @JsonKey(name: 'TargetType')  ActivityTargetType targetType, @JsonKey(name: 'TargetId')  String? targetId, @JsonKey(name: 'IPAddress')  String? ipAddress, @JsonKey(name: 'UserAgent')  String? userAgent, @JsonKey(name: 'Details')  String? details, @JsonKey(name: 'IsSuccess')  bool isSuccess, @JsonKey(name: 'ErrorMessage')  String? errorMessage, @JsonKey(name: 'DurationMs')  int? durationMs)  $default,) {final _that = this;
switch (_that) {
case _UserActivityLogAddRequest():
return $default(_that.actorId,_that.actorRole,_that.actionType,_that.targetType,_that.targetId,_that.ipAddress,_that.userAgent,_that.details,_that.isSuccess,_that.errorMessage,_that.durationMs);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ActorId')  String actorId, @JsonKey(name: 'ActorRole')  String actorRole, @JsonKey(name: 'ActionType')  ActivityActionType actionType, @JsonKey(name: 'TargetType')  ActivityTargetType targetType, @JsonKey(name: 'TargetId')  String? targetId, @JsonKey(name: 'IPAddress')  String? ipAddress, @JsonKey(name: 'UserAgent')  String? userAgent, @JsonKey(name: 'Details')  String? details, @JsonKey(name: 'IsSuccess')  bool isSuccess, @JsonKey(name: 'ErrorMessage')  String? errorMessage, @JsonKey(name: 'DurationMs')  int? durationMs)?  $default,) {final _that = this;
switch (_that) {
case _UserActivityLogAddRequest() when $default != null:
return $default(_that.actorId,_that.actorRole,_that.actionType,_that.targetType,_that.targetId,_that.ipAddress,_that.userAgent,_that.details,_that.isSuccess,_that.errorMessage,_that.durationMs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserActivityLogAddRequest implements UserActivityLogAddRequest {
  const _UserActivityLogAddRequest({@JsonKey(name: 'ActorId') required this.actorId, @JsonKey(name: 'ActorRole') required this.actorRole, @JsonKey(name: 'ActionType') required this.actionType, @JsonKey(name: 'TargetType') required this.targetType, @JsonKey(name: 'TargetId') this.targetId, @JsonKey(name: 'IPAddress') this.ipAddress, @JsonKey(name: 'UserAgent') this.userAgent, @JsonKey(name: 'Details') this.details, @JsonKey(name: 'IsSuccess') required this.isSuccess, @JsonKey(name: 'ErrorMessage') this.errorMessage, @JsonKey(name: 'DurationMs') this.durationMs});
  factory _UserActivityLogAddRequest.fromJson(Map<String, dynamic> json) => _$UserActivityLogAddRequestFromJson(json);

@override@JsonKey(name: 'ActorId') final  String actorId;
@override@JsonKey(name: 'ActorRole') final  String actorRole;
@override@JsonKey(name: 'ActionType') final  ActivityActionType actionType;
@override@JsonKey(name: 'TargetType') final  ActivityTargetType targetType;
@override@JsonKey(name: 'TargetId') final  String? targetId;
@override@JsonKey(name: 'IPAddress') final  String? ipAddress;
@override@JsonKey(name: 'UserAgent') final  String? userAgent;
@override@JsonKey(name: 'Details') final  String? details;
@override@JsonKey(name: 'IsSuccess') final  bool isSuccess;
@override@JsonKey(name: 'ErrorMessage') final  String? errorMessage;
@override@JsonKey(name: 'DurationMs') final  int? durationMs;

/// Create a copy of UserActivityLogAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserActivityLogAddRequestCopyWith<_UserActivityLogAddRequest> get copyWith => __$UserActivityLogAddRequestCopyWithImpl<_UserActivityLogAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserActivityLogAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserActivityLogAddRequest&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.details, details) || other.details == details)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actorId,actorRole,actionType,targetType,targetId,ipAddress,userAgent,details,isSuccess,errorMessage,durationMs);

@override
String toString() {
  return 'UserActivityLogAddRequest(actorId: $actorId, actorRole: $actorRole, actionType: $actionType, targetType: $targetType, targetId: $targetId, ipAddress: $ipAddress, userAgent: $userAgent, details: $details, isSuccess: $isSuccess, errorMessage: $errorMessage, durationMs: $durationMs)';
}


}

/// @nodoc
abstract mixin class _$UserActivityLogAddRequestCopyWith<$Res> implements $UserActivityLogAddRequestCopyWith<$Res> {
  factory _$UserActivityLogAddRequestCopyWith(_UserActivityLogAddRequest value, $Res Function(_UserActivityLogAddRequest) _then) = __$UserActivityLogAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ActorId') String actorId,@JsonKey(name: 'ActorRole') String actorRole,@JsonKey(name: 'ActionType') ActivityActionType actionType,@JsonKey(name: 'TargetType') ActivityTargetType targetType,@JsonKey(name: 'TargetId') String? targetId,@JsonKey(name: 'IPAddress') String? ipAddress,@JsonKey(name: 'UserAgent') String? userAgent,@JsonKey(name: 'Details') String? details,@JsonKey(name: 'IsSuccess') bool isSuccess,@JsonKey(name: 'ErrorMessage') String? errorMessage,@JsonKey(name: 'DurationMs') int? durationMs
});




}
/// @nodoc
class __$UserActivityLogAddRequestCopyWithImpl<$Res>
    implements _$UserActivityLogAddRequestCopyWith<$Res> {
  __$UserActivityLogAddRequestCopyWithImpl(this._self, this._then);

  final _UserActivityLogAddRequest _self;
  final $Res Function(_UserActivityLogAddRequest) _then;

/// Create a copy of UserActivityLogAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? actorId = null,Object? actorRole = null,Object? actionType = null,Object? targetType = null,Object? targetId = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,Object? details = freezed,Object? isSuccess = null,Object? errorMessage = freezed,Object? durationMs = freezed,}) {
  return _then(_UserActivityLogAddRequest(
actorId: null == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as ActivityActionType,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ActivityTargetType,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
