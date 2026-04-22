// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preference_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferenceUpdateRequest {

@JsonKey(name: 'Theme') ThemeMode get theme;@JsonKey(name: 'Language') LanguageCode get language;@JsonKey(name: 'PushNotifications') bool get pushNotifications;@JsonKey(name: 'EmailNotifications') bool get emailNotifications;@JsonKey(name: 'UpdatedAt') DateTime get updatedAt;
/// Create a copy of UserPreferenceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferenceUpdateRequestCopyWith<UserPreferenceUpdateRequest> get copyWith => _$UserPreferenceUpdateRequestCopyWithImpl<UserPreferenceUpdateRequest>(this as UserPreferenceUpdateRequest, _$identity);

  /// Serializes this UserPreferenceUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferenceUpdateRequest&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.language, language) || other.language == language)&&(identical(other.pushNotifications, pushNotifications) || other.pushNotifications == pushNotifications)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,language,pushNotifications,emailNotifications,updatedAt);

@override
String toString() {
  return 'UserPreferenceUpdateRequest(theme: $theme, language: $language, pushNotifications: $pushNotifications, emailNotifications: $emailNotifications, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserPreferenceUpdateRequestCopyWith<$Res>  {
  factory $UserPreferenceUpdateRequestCopyWith(UserPreferenceUpdateRequest value, $Res Function(UserPreferenceUpdateRequest) _then) = _$UserPreferenceUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Theme') ThemeMode theme,@JsonKey(name: 'Language') LanguageCode language,@JsonKey(name: 'PushNotifications') bool pushNotifications,@JsonKey(name: 'EmailNotifications') bool emailNotifications,@JsonKey(name: 'UpdatedAt') DateTime updatedAt
});




}
/// @nodoc
class _$UserPreferenceUpdateRequestCopyWithImpl<$Res>
    implements $UserPreferenceUpdateRequestCopyWith<$Res> {
  _$UserPreferenceUpdateRequestCopyWithImpl(this._self, this._then);

  final UserPreferenceUpdateRequest _self;
  final $Res Function(UserPreferenceUpdateRequest) _then;

/// Create a copy of UserPreferenceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,Object? language = null,Object? pushNotifications = null,Object? emailNotifications = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeMode,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageCode,pushNotifications: null == pushNotifications ? _self.pushNotifications : pushNotifications // ignore: cast_nullable_to_non_nullable
as bool,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferenceUpdateRequest].
extension UserPreferenceUpdateRequestPatterns on UserPreferenceUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferenceUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferenceUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferenceUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferenceUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferenceUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferenceUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Theme')  ThemeMode theme, @JsonKey(name: 'Language')  LanguageCode language, @JsonKey(name: 'PushNotifications')  bool pushNotifications, @JsonKey(name: 'EmailNotifications')  bool emailNotifications, @JsonKey(name: 'UpdatedAt')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferenceUpdateRequest() when $default != null:
return $default(_that.theme,_that.language,_that.pushNotifications,_that.emailNotifications,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Theme')  ThemeMode theme, @JsonKey(name: 'Language')  LanguageCode language, @JsonKey(name: 'PushNotifications')  bool pushNotifications, @JsonKey(name: 'EmailNotifications')  bool emailNotifications, @JsonKey(name: 'UpdatedAt')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserPreferenceUpdateRequest():
return $default(_that.theme,_that.language,_that.pushNotifications,_that.emailNotifications,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Theme')  ThemeMode theme, @JsonKey(name: 'Language')  LanguageCode language, @JsonKey(name: 'PushNotifications')  bool pushNotifications, @JsonKey(name: 'EmailNotifications')  bool emailNotifications, @JsonKey(name: 'UpdatedAt')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferenceUpdateRequest() when $default != null:
return $default(_that.theme,_that.language,_that.pushNotifications,_that.emailNotifications,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferenceUpdateRequest implements UserPreferenceUpdateRequest {
  const _UserPreferenceUpdateRequest({@JsonKey(name: 'Theme') required this.theme, @JsonKey(name: 'Language') required this.language, @JsonKey(name: 'PushNotifications') required this.pushNotifications, @JsonKey(name: 'EmailNotifications') required this.emailNotifications, @JsonKey(name: 'UpdatedAt') required this.updatedAt});
  factory _UserPreferenceUpdateRequest.fromJson(Map<String, dynamic> json) => _$UserPreferenceUpdateRequestFromJson(json);

@override@JsonKey(name: 'Theme') final  ThemeMode theme;
@override@JsonKey(name: 'Language') final  LanguageCode language;
@override@JsonKey(name: 'PushNotifications') final  bool pushNotifications;
@override@JsonKey(name: 'EmailNotifications') final  bool emailNotifications;
@override@JsonKey(name: 'UpdatedAt') final  DateTime updatedAt;

/// Create a copy of UserPreferenceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferenceUpdateRequestCopyWith<_UserPreferenceUpdateRequest> get copyWith => __$UserPreferenceUpdateRequestCopyWithImpl<_UserPreferenceUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferenceUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferenceUpdateRequest&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.language, language) || other.language == language)&&(identical(other.pushNotifications, pushNotifications) || other.pushNotifications == pushNotifications)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,language,pushNotifications,emailNotifications,updatedAt);

@override
String toString() {
  return 'UserPreferenceUpdateRequest(theme: $theme, language: $language, pushNotifications: $pushNotifications, emailNotifications: $emailNotifications, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserPreferenceUpdateRequestCopyWith<$Res> implements $UserPreferenceUpdateRequestCopyWith<$Res> {
  factory _$UserPreferenceUpdateRequestCopyWith(_UserPreferenceUpdateRequest value, $Res Function(_UserPreferenceUpdateRequest) _then) = __$UserPreferenceUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Theme') ThemeMode theme,@JsonKey(name: 'Language') LanguageCode language,@JsonKey(name: 'PushNotifications') bool pushNotifications,@JsonKey(name: 'EmailNotifications') bool emailNotifications,@JsonKey(name: 'UpdatedAt') DateTime updatedAt
});




}
/// @nodoc
class __$UserPreferenceUpdateRequestCopyWithImpl<$Res>
    implements _$UserPreferenceUpdateRequestCopyWith<$Res> {
  __$UserPreferenceUpdateRequestCopyWithImpl(this._self, this._then);

  final _UserPreferenceUpdateRequest _self;
  final $Res Function(_UserPreferenceUpdateRequest) _then;

/// Create a copy of UserPreferenceUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? language = null,Object? pushNotifications = null,Object? emailNotifications = null,Object? updatedAt = null,}) {
  return _then(_UserPreferenceUpdateRequest(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeMode,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageCode,pushNotifications: null == pushNotifications ? _self.pushNotifications : pushNotifications // ignore: cast_nullable_to_non_nullable
as bool,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
