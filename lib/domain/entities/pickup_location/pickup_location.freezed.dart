// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PickupLocation {

 String get id; String get userId; LocationLabel get label; String get address; LocationPreset get locationPreset; String? get notes; double get lat; double get lon; bool get isDefault;
/// Create a copy of PickupLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupLocationCopyWith<PickupLocation> get copyWith => _$PickupLocationCopyWithImpl<PickupLocation>(this as PickupLocation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationPreset, locationPreset) || other.locationPreset == locationPreset)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,label,address,locationPreset,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocation(id: $id, userId: $userId, label: $label, address: $address, locationPreset: $locationPreset, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $PickupLocationCopyWith<$Res>  {
  factory $PickupLocationCopyWith(PickupLocation value, $Res Function(PickupLocation) _then) = _$PickupLocationCopyWithImpl;
@useResult
$Res call({
 String id, String userId, LocationLabel label, String address, LocationPreset locationPreset, String? notes, double lat, double lon, bool isDefault
});




}
/// @nodoc
class _$PickupLocationCopyWithImpl<$Res>
    implements $PickupLocationCopyWith<$Res> {
  _$PickupLocationCopyWithImpl(this._self, this._then);

  final PickupLocation _self;
  final $Res Function(PickupLocation) _then;

/// Create a copy of PickupLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? label = null,Object? address = null,Object? locationPreset = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocationLabel,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,locationPreset: null == locationPreset ? _self.locationPreset : locationPreset // ignore: cast_nullable_to_non_nullable
as LocationPreset,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupLocation].
extension PickupLocationPatterns on PickupLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupLocation value)  $default,){
final _that = this;
switch (_that) {
case _PickupLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupLocation value)?  $default,){
final _that = this;
switch (_that) {
case _PickupLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  LocationLabel label,  String address,  LocationPreset locationPreset,  String? notes,  double lat,  double lon,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupLocation() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.address,_that.locationPreset,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  LocationLabel label,  String address,  LocationPreset locationPreset,  String? notes,  double lat,  double lon,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _PickupLocation():
return $default(_that.id,_that.userId,_that.label,_that.address,_that.locationPreset,_that.notes,_that.lat,_that.lon,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  LocationLabel label,  String address,  LocationPreset locationPreset,  String? notes,  double lat,  double lon,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _PickupLocation() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.address,_that.locationPreset,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _PickupLocation implements PickupLocation {
  const _PickupLocation({required this.id, required this.userId, required this.label, required this.address, required this.locationPreset, this.notes, required this.lat, required this.lon, required this.isDefault});
  

@override final  String id;
@override final  String userId;
@override final  LocationLabel label;
@override final  String address;
@override final  LocationPreset locationPreset;
@override final  String? notes;
@override final  double lat;
@override final  double lon;
@override final  bool isDefault;

/// Create a copy of PickupLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupLocationCopyWith<_PickupLocation> get copyWith => __$PickupLocationCopyWithImpl<_PickupLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationPreset, locationPreset) || other.locationPreset == locationPreset)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,label,address,locationPreset,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocation(id: $id, userId: $userId, label: $label, address: $address, locationPreset: $locationPreset, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$PickupLocationCopyWith<$Res> implements $PickupLocationCopyWith<$Res> {
  factory _$PickupLocationCopyWith(_PickupLocation value, $Res Function(_PickupLocation) _then) = __$PickupLocationCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, LocationLabel label, String address, LocationPreset locationPreset, String? notes, double lat, double lon, bool isDefault
});




}
/// @nodoc
class __$PickupLocationCopyWithImpl<$Res>
    implements _$PickupLocationCopyWith<$Res> {
  __$PickupLocationCopyWithImpl(this._self, this._then);

  final _PickupLocation _self;
  final $Res Function(_PickupLocation) _then;

/// Create a copy of PickupLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? label = null,Object? address = null,Object? locationPreset = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_PickupLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocationLabel,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,locationPreset: null == locationPreset ? _self.locationPreset : locationPreset // ignore: cast_nullable_to_non_nullable
as LocationPreset,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
