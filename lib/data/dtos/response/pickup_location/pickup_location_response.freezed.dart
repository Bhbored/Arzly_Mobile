// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickupLocationResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'Label') LocationLabel get label;@JsonKey(name: 'LocationPreset') LocationPreset get locationPreset;@JsonKey(name: 'Address') String get address;@JsonKey(name: 'Notes') String? get notes;@JsonKey(name: 'Lat') double get lat;@JsonKey(name: 'Lon') double get lon;@JsonKey(name: 'IsDefault') bool get isDefault;
/// Create a copy of PickupLocationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupLocationResponseCopyWith<PickupLocationResponse> get copyWith => _$PickupLocationResponseCopyWithImpl<PickupLocationResponse>(this as PickupLocationResponse, _$identity);

  /// Serializes this PickupLocationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupLocationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.locationPreset, locationPreset) || other.locationPreset == locationPreset)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,label,locationPreset,address,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocationResponse(id: $id, userId: $userId, label: $label, locationPreset: $locationPreset, address: $address, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $PickupLocationResponseCopyWith<$Res>  {
  factory $PickupLocationResponseCopyWith(PickupLocationResponse value, $Res Function(PickupLocationResponse) _then) = _$PickupLocationResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Label') LocationLabel label,@JsonKey(name: 'LocationPreset') LocationPreset locationPreset,@JsonKey(name: 'Address') String address,@JsonKey(name: 'Notes') String? notes,@JsonKey(name: 'Lat') double lat,@JsonKey(name: 'Lon') double lon,@JsonKey(name: 'IsDefault') bool isDefault
});




}
/// @nodoc
class _$PickupLocationResponseCopyWithImpl<$Res>
    implements $PickupLocationResponseCopyWith<$Res> {
  _$PickupLocationResponseCopyWithImpl(this._self, this._then);

  final PickupLocationResponse _self;
  final $Res Function(PickupLocationResponse) _then;

/// Create a copy of PickupLocationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? label = null,Object? locationPreset = null,Object? address = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocationLabel,locationPreset: null == locationPreset ? _self.locationPreset : locationPreset // ignore: cast_nullable_to_non_nullable
as LocationPreset,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupLocationResponse].
extension PickupLocationResponsePatterns on PickupLocationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupLocationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupLocationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupLocationResponse value)  $default,){
final _that = this;
switch (_that) {
case _PickupLocationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupLocationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PickupLocationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'LocationPreset')  LocationPreset locationPreset, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupLocationResponse() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.locationPreset,_that.address,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'LocationPreset')  LocationPreset locationPreset, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _PickupLocationResponse():
return $default(_that.id,_that.userId,_that.label,_that.locationPreset,_that.address,_that.notes,_that.lat,_that.lon,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'LocationPreset')  LocationPreset locationPreset, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _PickupLocationResponse() when $default != null:
return $default(_that.id,_that.userId,_that.label,_that.locationPreset,_that.address,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupLocationResponse implements PickupLocationResponse {
  const _PickupLocationResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'Label') required this.label, @JsonKey(name: 'LocationPreset') required this.locationPreset, @JsonKey(name: 'Address') required this.address, @JsonKey(name: 'Notes') this.notes, @JsonKey(name: 'Lat') required this.lat, @JsonKey(name: 'Lon') required this.lon, @JsonKey(name: 'IsDefault') required this.isDefault});
  factory _PickupLocationResponse.fromJson(Map<String, dynamic> json) => _$PickupLocationResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'Label') final  LocationLabel label;
@override@JsonKey(name: 'LocationPreset') final  LocationPreset locationPreset;
@override@JsonKey(name: 'Address') final  String address;
@override@JsonKey(name: 'Notes') final  String? notes;
@override@JsonKey(name: 'Lat') final  double lat;
@override@JsonKey(name: 'Lon') final  double lon;
@override@JsonKey(name: 'IsDefault') final  bool isDefault;

/// Create a copy of PickupLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupLocationResponseCopyWith<_PickupLocationResponse> get copyWith => __$PickupLocationResponseCopyWithImpl<_PickupLocationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupLocationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupLocationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.locationPreset, locationPreset) || other.locationPreset == locationPreset)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,label,locationPreset,address,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocationResponse(id: $id, userId: $userId, label: $label, locationPreset: $locationPreset, address: $address, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$PickupLocationResponseCopyWith<$Res> implements $PickupLocationResponseCopyWith<$Res> {
  factory _$PickupLocationResponseCopyWith(_PickupLocationResponse value, $Res Function(_PickupLocationResponse) _then) = __$PickupLocationResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Label') LocationLabel label,@JsonKey(name: 'LocationPreset') LocationPreset locationPreset,@JsonKey(name: 'Address') String address,@JsonKey(name: 'Notes') String? notes,@JsonKey(name: 'Lat') double lat,@JsonKey(name: 'Lon') double lon,@JsonKey(name: 'IsDefault') bool isDefault
});




}
/// @nodoc
class __$PickupLocationResponseCopyWithImpl<$Res>
    implements _$PickupLocationResponseCopyWith<$Res> {
  __$PickupLocationResponseCopyWithImpl(this._self, this._then);

  final _PickupLocationResponse _self;
  final $Res Function(_PickupLocationResponse) _then;

/// Create a copy of PickupLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? label = null,Object? locationPreset = null,Object? address = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_PickupLocationResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocationLabel,locationPreset: null == locationPreset ? _self.locationPreset : locationPreset // ignore: cast_nullable_to_non_nullable
as LocationPreset,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
