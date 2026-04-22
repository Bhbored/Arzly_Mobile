// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPreference {

 String get userId; ThemeMode get theme; LanguageCode get language; bool get pushNotifications; bool get emailNotifications; DateTime get updatedAt;
/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferenceCopyWith<UserPreference> get copyWith => _$UserPreferenceCopyWithImpl<UserPreference>(this as UserPreference, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreference&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.language, language) || other.language == language)&&(identical(other.pushNotifications, pushNotifications) || other.pushNotifications == pushNotifications)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,userId,theme,language,pushNotifications,emailNotifications,updatedAt);

@override
String toString() {
  return 'UserPreference(userId: $userId, theme: $theme, language: $language, pushNotifications: $pushNotifications, emailNotifications: $emailNotifications, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserPreferenceCopyWith<$Res>  {
  factory $UserPreferenceCopyWith(UserPreference value, $Res Function(UserPreference) _then) = _$UserPreferenceCopyWithImpl;
@useResult
$Res call({
 String userId, ThemeMode theme, LanguageCode language, bool pushNotifications, bool emailNotifications, DateTime updatedAt
});




}
/// @nodoc
class _$UserPreferenceCopyWithImpl<$Res>
    implements $UserPreferenceCopyWith<$Res> {
  _$UserPreferenceCopyWithImpl(this._self, this._then);

  final UserPreference _self;
  final $Res Function(UserPreference) _then;

/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? theme = null,Object? language = null,Object? pushNotifications = null,Object? emailNotifications = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeMode,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageCode,pushNotifications: null == pushNotifications ? _self.pushNotifications : pushNotifications // ignore: cast_nullable_to_non_nullable
as bool,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreference].
extension UserPreferencePatterns on UserPreference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreference value)  $default,){
final _that = this;
switch (_that) {
case _UserPreference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreference value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreference() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  ThemeMode theme,  LanguageCode language,  bool pushNotifications,  bool emailNotifications,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreference() when $default != null:
return $default(_that.userId,_that.theme,_that.language,_that.pushNotifications,_that.emailNotifications,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  ThemeMode theme,  LanguageCode language,  bool pushNotifications,  bool emailNotifications,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserPreference():
return $default(_that.userId,_that.theme,_that.language,_that.pushNotifications,_that.emailNotifications,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  ThemeMode theme,  LanguageCode language,  bool pushNotifications,  bool emailNotifications,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserPreference() when $default != null:
return $default(_that.userId,_that.theme,_that.language,_that.pushNotifications,_that.emailNotifications,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserPreference implements UserPreference {
  const _UserPreference({required this.userId, required this.theme, required this.language, required this.pushNotifications, required this.emailNotifications, required this.updatedAt});
  

@override final  String userId;
@override final  ThemeMode theme;
@override final  LanguageCode language;
@override final  bool pushNotifications;
@override final  bool emailNotifications;
@override final  DateTime updatedAt;

/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferenceCopyWith<_UserPreference> get copyWith => __$UserPreferenceCopyWithImpl<_UserPreference>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreference&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.language, language) || other.language == language)&&(identical(other.pushNotifications, pushNotifications) || other.pushNotifications == pushNotifications)&&(identical(other.emailNotifications, emailNotifications) || other.emailNotifications == emailNotifications)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,userId,theme,language,pushNotifications,emailNotifications,updatedAt);

@override
String toString() {
  return 'UserPreference(userId: $userId, theme: $theme, language: $language, pushNotifications: $pushNotifications, emailNotifications: $emailNotifications, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserPreferenceCopyWith<$Res> implements $UserPreferenceCopyWith<$Res> {
  factory _$UserPreferenceCopyWith(_UserPreference value, $Res Function(_UserPreference) _then) = __$UserPreferenceCopyWithImpl;
@override @useResult
$Res call({
 String userId, ThemeMode theme, LanguageCode language, bool pushNotifications, bool emailNotifications, DateTime updatedAt
});




}
/// @nodoc
class __$UserPreferenceCopyWithImpl<$Res>
    implements _$UserPreferenceCopyWith<$Res> {
  __$UserPreferenceCopyWithImpl(this._self, this._then);

  final _UserPreference _self;
  final $Res Function(_UserPreference) _then;

/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? theme = null,Object? language = null,Object? pushNotifications = null,Object? emailNotifications = null,Object? updatedAt = null,}) {
  return _then(_UserPreference(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeMode,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageCode,pushNotifications: null == pushNotifications ? _self.pushNotifications : pushNotifications // ignore: cast_nullable_to_non_nullable
as bool,emailNotifications: null == emailNotifications ? _self.emailNotifications : emailNotifications // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
