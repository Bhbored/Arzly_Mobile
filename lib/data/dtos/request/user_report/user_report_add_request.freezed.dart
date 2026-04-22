// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_report_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserReportAddRequest {

@JsonKey(name: 'ReporterId') String get reporterId;@JsonKey(name: 'ReportedUserId') String get reportedUserId;@JsonKey(name: 'ChatId') String? get chatId;@JsonKey(name: 'Reason') ReportReasonType get reason;@JsonKey(name: 'Notes') String? get notes;
/// Create a copy of UserReportAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReportAddRequestCopyWith<UserReportAddRequest> get copyWith => _$UserReportAddRequestCopyWithImpl<UserReportAddRequest>(this as UserReportAddRequest, _$identity);

  /// Serializes this UserReportAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReportAddRequest&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.reportedUserId, reportedUserId) || other.reportedUserId == reportedUserId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reporterId,reportedUserId,chatId,reason,notes);

@override
String toString() {
  return 'UserReportAddRequest(reporterId: $reporterId, reportedUserId: $reportedUserId, chatId: $chatId, reason: $reason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $UserReportAddRequestCopyWith<$Res>  {
  factory $UserReportAddRequestCopyWith(UserReportAddRequest value, $Res Function(UserReportAddRequest) _then) = _$UserReportAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ReporterId') String reporterId,@JsonKey(name: 'ReportedUserId') String reportedUserId,@JsonKey(name: 'ChatId') String? chatId,@JsonKey(name: 'Reason') ReportReasonType reason,@JsonKey(name: 'Notes') String? notes
});




}
/// @nodoc
class _$UserReportAddRequestCopyWithImpl<$Res>
    implements $UserReportAddRequestCopyWith<$Res> {
  _$UserReportAddRequestCopyWithImpl(this._self, this._then);

  final UserReportAddRequest _self;
  final $Res Function(UserReportAddRequest) _then;

/// Create a copy of UserReportAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reporterId = null,Object? reportedUserId = null,Object? chatId = freezed,Object? reason = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as String,reportedUserId: null == reportedUserId ? _self.reportedUserId : reportedUserId // ignore: cast_nullable_to_non_nullable
as String,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReportReasonType,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReportAddRequest].
extension UserReportAddRequestPatterns on UserReportAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReportAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReportAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReportAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _UserReportAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReportAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UserReportAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ReporterId')  String reporterId, @JsonKey(name: 'ReportedUserId')  String reportedUserId, @JsonKey(name: 'ChatId')  String? chatId, @JsonKey(name: 'Reason')  ReportReasonType reason, @JsonKey(name: 'Notes')  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReportAddRequest() when $default != null:
return $default(_that.reporterId,_that.reportedUserId,_that.chatId,_that.reason,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ReporterId')  String reporterId, @JsonKey(name: 'ReportedUserId')  String reportedUserId, @JsonKey(name: 'ChatId')  String? chatId, @JsonKey(name: 'Reason')  ReportReasonType reason, @JsonKey(name: 'Notes')  String? notes)  $default,) {final _that = this;
switch (_that) {
case _UserReportAddRequest():
return $default(_that.reporterId,_that.reportedUserId,_that.chatId,_that.reason,_that.notes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ReporterId')  String reporterId, @JsonKey(name: 'ReportedUserId')  String reportedUserId, @JsonKey(name: 'ChatId')  String? chatId, @JsonKey(name: 'Reason')  ReportReasonType reason, @JsonKey(name: 'Notes')  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _UserReportAddRequest() when $default != null:
return $default(_that.reporterId,_that.reportedUserId,_that.chatId,_that.reason,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReportAddRequest implements UserReportAddRequest {
  const _UserReportAddRequest({@JsonKey(name: 'ReporterId') required this.reporterId, @JsonKey(name: 'ReportedUserId') required this.reportedUserId, @JsonKey(name: 'ChatId') this.chatId, @JsonKey(name: 'Reason') required this.reason, @JsonKey(name: 'Notes') this.notes});
  factory _UserReportAddRequest.fromJson(Map<String, dynamic> json) => _$UserReportAddRequestFromJson(json);

@override@JsonKey(name: 'ReporterId') final  String reporterId;
@override@JsonKey(name: 'ReportedUserId') final  String reportedUserId;
@override@JsonKey(name: 'ChatId') final  String? chatId;
@override@JsonKey(name: 'Reason') final  ReportReasonType reason;
@override@JsonKey(name: 'Notes') final  String? notes;

/// Create a copy of UserReportAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReportAddRequestCopyWith<_UserReportAddRequest> get copyWith => __$UserReportAddRequestCopyWithImpl<_UserReportAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReportAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReportAddRequest&&(identical(other.reporterId, reporterId) || other.reporterId == reporterId)&&(identical(other.reportedUserId, reportedUserId) || other.reportedUserId == reportedUserId)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reporterId,reportedUserId,chatId,reason,notes);

@override
String toString() {
  return 'UserReportAddRequest(reporterId: $reporterId, reportedUserId: $reportedUserId, chatId: $chatId, reason: $reason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$UserReportAddRequestCopyWith<$Res> implements $UserReportAddRequestCopyWith<$Res> {
  factory _$UserReportAddRequestCopyWith(_UserReportAddRequest value, $Res Function(_UserReportAddRequest) _then) = __$UserReportAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ReporterId') String reporterId,@JsonKey(name: 'ReportedUserId') String reportedUserId,@JsonKey(name: 'ChatId') String? chatId,@JsonKey(name: 'Reason') ReportReasonType reason,@JsonKey(name: 'Notes') String? notes
});




}
/// @nodoc
class __$UserReportAddRequestCopyWithImpl<$Res>
    implements _$UserReportAddRequestCopyWith<$Res> {
  __$UserReportAddRequestCopyWithImpl(this._self, this._then);

  final _UserReportAddRequest _self;
  final $Res Function(_UserReportAddRequest) _then;

/// Create a copy of UserReportAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reporterId = null,Object? reportedUserId = null,Object? chatId = freezed,Object? reason = null,Object? notes = freezed,}) {
  return _then(_UserReportAddRequest(
reporterId: null == reporterId ? _self.reporterId : reporterId // ignore: cast_nullable_to_non_nullable
as String,reportedUserId: null == reportedUserId ? _self.reportedUserId : reportedUserId // ignore: cast_nullable_to_non_nullable
as String,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReportReasonType,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
