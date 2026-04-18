// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUser {

 String get id; AuthMethod get authMethod; String? get firebaseUid; String? get publicName; String? get publicLocation; String? get profileImageUrl; DateTime get createdAt; List<DeliveryLocation> get deliveryLocations; List<String> get searchHistory; UserPreferences? get preferences;
/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUserCopyWith<AppUser> get copyWith => _$AppUserCopyWithImpl<AppUser>(this as AppUser, _$identity);

  /// Serializes this AppUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUser&&(identical(other.id, id) || other.id == id)&&(identical(other.authMethod, authMethod) || other.authMethod == authMethod)&&(identical(other.firebaseUid, firebaseUid) || other.firebaseUid == firebaseUid)&&(identical(other.publicName, publicName) || other.publicName == publicName)&&(identical(other.publicLocation, publicLocation) || other.publicLocation == publicLocation)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.deliveryLocations, deliveryLocations)&&const DeepCollectionEquality().equals(other.searchHistory, searchHistory)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authMethod,firebaseUid,publicName,publicLocation,profileImageUrl,createdAt,const DeepCollectionEquality().hash(deliveryLocations),const DeepCollectionEquality().hash(searchHistory),preferences);

@override
String toString() {
  return 'AppUser(id: $id, authMethod: $authMethod, firebaseUid: $firebaseUid, publicName: $publicName, publicLocation: $publicLocation, profileImageUrl: $profileImageUrl, createdAt: $createdAt, deliveryLocations: $deliveryLocations, searchHistory: $searchHistory, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $AppUserCopyWith<$Res>  {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) _then) = _$AppUserCopyWithImpl;
@useResult
$Res call({
 String id, AuthMethod authMethod, String? firebaseUid, String? publicName, String? publicLocation, String? profileImageUrl, DateTime createdAt, List<DeliveryLocation> deliveryLocations, List<String> searchHistory, UserPreferences? preferences
});


$UserPreferencesCopyWith<$Res>? get preferences;

}
/// @nodoc
class _$AppUserCopyWithImpl<$Res>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._self, this._then);

  final AppUser _self;
  final $Res Function(AppUser) _then;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? authMethod = null,Object? firebaseUid = freezed,Object? publicName = freezed,Object? publicLocation = freezed,Object? profileImageUrl = freezed,Object? createdAt = null,Object? deliveryLocations = null,Object? searchHistory = null,Object? preferences = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authMethod: null == authMethod ? _self.authMethod : authMethod // ignore: cast_nullable_to_non_nullable
as AuthMethod,firebaseUid: freezed == firebaseUid ? _self.firebaseUid : firebaseUid // ignore: cast_nullable_to_non_nullable
as String?,publicName: freezed == publicName ? _self.publicName : publicName // ignore: cast_nullable_to_non_nullable
as String?,publicLocation: freezed == publicLocation ? _self.publicLocation : publicLocation // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveryLocations: null == deliveryLocations ? _self.deliveryLocations : deliveryLocations // ignore: cast_nullable_to_non_nullable
as List<DeliveryLocation>,searchHistory: null == searchHistory ? _self.searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserPreferences?,
  ));
}
/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $UserPreferencesCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppUser].
extension AppUserPatterns on AppUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUser value)  $default,){
final _that = this;
switch (_that) {
case _AppUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUser value)?  $default,){
final _that = this;
switch (_that) {
case _AppUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AuthMethod authMethod,  String? firebaseUid,  String? publicName,  String? publicLocation,  String? profileImageUrl,  DateTime createdAt,  List<DeliveryLocation> deliveryLocations,  List<String> searchHistory,  UserPreferences? preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUser() when $default != null:
return $default(_that.id,_that.authMethod,_that.firebaseUid,_that.publicName,_that.publicLocation,_that.profileImageUrl,_that.createdAt,_that.deliveryLocations,_that.searchHistory,_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AuthMethod authMethod,  String? firebaseUid,  String? publicName,  String? publicLocation,  String? profileImageUrl,  DateTime createdAt,  List<DeliveryLocation> deliveryLocations,  List<String> searchHistory,  UserPreferences? preferences)  $default,) {final _that = this;
switch (_that) {
case _AppUser():
return $default(_that.id,_that.authMethod,_that.firebaseUid,_that.publicName,_that.publicLocation,_that.profileImageUrl,_that.createdAt,_that.deliveryLocations,_that.searchHistory,_that.preferences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AuthMethod authMethod,  String? firebaseUid,  String? publicName,  String? publicLocation,  String? profileImageUrl,  DateTime createdAt,  List<DeliveryLocation> deliveryLocations,  List<String> searchHistory,  UserPreferences? preferences)?  $default,) {final _that = this;
switch (_that) {
case _AppUser() when $default != null:
return $default(_that.id,_that.authMethod,_that.firebaseUid,_that.publicName,_that.publicLocation,_that.profileImageUrl,_that.createdAt,_that.deliveryLocations,_that.searchHistory,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUser implements AppUser {
  const _AppUser({required this.id, required this.authMethod, this.firebaseUid, this.publicName, this.publicLocation, this.profileImageUrl, required this.createdAt, final  List<DeliveryLocation> deliveryLocations = const [], final  List<String> searchHistory = const [], this.preferences}): _deliveryLocations = deliveryLocations,_searchHistory = searchHistory;
  factory _AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);

@override final  String id;
@override final  AuthMethod authMethod;
@override final  String? firebaseUid;
@override final  String? publicName;
@override final  String? publicLocation;
@override final  String? profileImageUrl;
@override final  DateTime createdAt;
 final  List<DeliveryLocation> _deliveryLocations;
@override@JsonKey() List<DeliveryLocation> get deliveryLocations {
  if (_deliveryLocations is EqualUnmodifiableListView) return _deliveryLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryLocations);
}

 final  List<String> _searchHistory;
@override@JsonKey() List<String> get searchHistory {
  if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchHistory);
}

@override final  UserPreferences? preferences;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUserCopyWith<_AppUser> get copyWith => __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUser&&(identical(other.id, id) || other.id == id)&&(identical(other.authMethod, authMethod) || other.authMethod == authMethod)&&(identical(other.firebaseUid, firebaseUid) || other.firebaseUid == firebaseUid)&&(identical(other.publicName, publicName) || other.publicName == publicName)&&(identical(other.publicLocation, publicLocation) || other.publicLocation == publicLocation)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._deliveryLocations, _deliveryLocations)&&const DeepCollectionEquality().equals(other._searchHistory, _searchHistory)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authMethod,firebaseUid,publicName,publicLocation,profileImageUrl,createdAt,const DeepCollectionEquality().hash(_deliveryLocations),const DeepCollectionEquality().hash(_searchHistory),preferences);

@override
String toString() {
  return 'AppUser(id: $id, authMethod: $authMethod, firebaseUid: $firebaseUid, publicName: $publicName, publicLocation: $publicLocation, profileImageUrl: $profileImageUrl, createdAt: $createdAt, deliveryLocations: $deliveryLocations, searchHistory: $searchHistory, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) _then) = __$AppUserCopyWithImpl;
@override @useResult
$Res call({
 String id, AuthMethod authMethod, String? firebaseUid, String? publicName, String? publicLocation, String? profileImageUrl, DateTime createdAt, List<DeliveryLocation> deliveryLocations, List<String> searchHistory, UserPreferences? preferences
});


@override $UserPreferencesCopyWith<$Res>? get preferences;

}
/// @nodoc
class __$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(this._self, this._then);

  final _AppUser _self;
  final $Res Function(_AppUser) _then;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? authMethod = null,Object? firebaseUid = freezed,Object? publicName = freezed,Object? publicLocation = freezed,Object? profileImageUrl = freezed,Object? createdAt = null,Object? deliveryLocations = null,Object? searchHistory = null,Object? preferences = freezed,}) {
  return _then(_AppUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authMethod: null == authMethod ? _self.authMethod : authMethod // ignore: cast_nullable_to_non_nullable
as AuthMethod,firebaseUid: freezed == firebaseUid ? _self.firebaseUid : firebaseUid // ignore: cast_nullable_to_non_nullable
as String?,publicName: freezed == publicName ? _self.publicName : publicName // ignore: cast_nullable_to_non_nullable
as String?,publicLocation: freezed == publicLocation ? _self.publicLocation : publicLocation // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveryLocations: null == deliveryLocations ? _self._deliveryLocations : deliveryLocations // ignore: cast_nullable_to_non_nullable
as List<DeliveryLocation>,searchHistory: null == searchHistory ? _self._searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserPreferences?,
  ));
}

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $UserPreferencesCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}

// dart format on
