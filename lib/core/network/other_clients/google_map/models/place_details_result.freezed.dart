// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_details_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDetailsResult {

 double get latitude; double get longitude; String get displayName; String get formattedAddress; String get staticMapUrl;
/// Create a copy of PlaceDetailsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceDetailsResultCopyWith<PlaceDetailsResult> get copyWith => _$PlaceDetailsResultCopyWithImpl<PlaceDetailsResult>(this as PlaceDetailsResult, _$identity);

  /// Serializes this PlaceDetailsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceDetailsResult&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.staticMapUrl, staticMapUrl) || other.staticMapUrl == staticMapUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,displayName,formattedAddress,staticMapUrl);

@override
String toString() {
  return 'PlaceDetailsResult(latitude: $latitude, longitude: $longitude, displayName: $displayName, formattedAddress: $formattedAddress, staticMapUrl: $staticMapUrl)';
}


}

/// @nodoc
abstract mixin class $PlaceDetailsResultCopyWith<$Res>  {
  factory $PlaceDetailsResultCopyWith(PlaceDetailsResult value, $Res Function(PlaceDetailsResult) _then) = _$PlaceDetailsResultCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, String displayName, String formattedAddress, String staticMapUrl
});




}
/// @nodoc
class _$PlaceDetailsResultCopyWithImpl<$Res>
    implements $PlaceDetailsResultCopyWith<$Res> {
  _$PlaceDetailsResultCopyWithImpl(this._self, this._then);

  final PlaceDetailsResult _self;
  final $Res Function(PlaceDetailsResult) _then;

/// Create a copy of PlaceDetailsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? displayName = null,Object? formattedAddress = null,Object? staticMapUrl = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,staticMapUrl: null == staticMapUrl ? _self.staticMapUrl : staticMapUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceDetailsResult].
extension PlaceDetailsResultPatterns on PlaceDetailsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceDetailsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceDetailsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceDetailsResult value)  $default,){
final _that = this;
switch (_that) {
case _PlaceDetailsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceDetailsResult value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceDetailsResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String displayName,  String formattedAddress,  String staticMapUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceDetailsResult() when $default != null:
return $default(_that.latitude,_that.longitude,_that.displayName,_that.formattedAddress,_that.staticMapUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  String displayName,  String formattedAddress,  String staticMapUrl)  $default,) {final _that = this;
switch (_that) {
case _PlaceDetailsResult():
return $default(_that.latitude,_that.longitude,_that.displayName,_that.formattedAddress,_that.staticMapUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  String displayName,  String formattedAddress,  String staticMapUrl)?  $default,) {final _that = this;
switch (_that) {
case _PlaceDetailsResult() when $default != null:
return $default(_that.latitude,_that.longitude,_that.displayName,_that.formattedAddress,_that.staticMapUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlaceDetailsResult implements PlaceDetailsResult {
  const _PlaceDetailsResult({required this.latitude, required this.longitude, required this.displayName, required this.formattedAddress, required this.staticMapUrl});
  factory _PlaceDetailsResult.fromJson(Map<String, dynamic> json) => _$PlaceDetailsResultFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  String displayName;
@override final  String formattedAddress;
@override final  String staticMapUrl;

/// Create a copy of PlaceDetailsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceDetailsResultCopyWith<_PlaceDetailsResult> get copyWith => __$PlaceDetailsResultCopyWithImpl<_PlaceDetailsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceDetailsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceDetailsResult&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.staticMapUrl, staticMapUrl) || other.staticMapUrl == staticMapUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,displayName,formattedAddress,staticMapUrl);

@override
String toString() {
  return 'PlaceDetailsResult(latitude: $latitude, longitude: $longitude, displayName: $displayName, formattedAddress: $formattedAddress, staticMapUrl: $staticMapUrl)';
}


}

/// @nodoc
abstract mixin class _$PlaceDetailsResultCopyWith<$Res> implements $PlaceDetailsResultCopyWith<$Res> {
  factory _$PlaceDetailsResultCopyWith(_PlaceDetailsResult value, $Res Function(_PlaceDetailsResult) _then) = __$PlaceDetailsResultCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, String displayName, String formattedAddress, String staticMapUrl
});




}
/// @nodoc
class __$PlaceDetailsResultCopyWithImpl<$Res>
    implements _$PlaceDetailsResultCopyWith<$Res> {
  __$PlaceDetailsResultCopyWithImpl(this._self, this._then);

  final _PlaceDetailsResult _self;
  final $Res Function(_PlaceDetailsResult) _then;

/// Create a copy of PlaceDetailsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? displayName = null,Object? formattedAddress = null,Object? staticMapUrl = null,}) {
  return _then(_PlaceDetailsResult(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,staticMapUrl: null == staticMapUrl ? _self.staticMapUrl : staticMapUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
