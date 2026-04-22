// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_location_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickupLocationAddRequest {

@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'Label') LocationLabel get label;@JsonKey(name: 'Address') String get address;@JsonKey(name: 'Notes') String? get notes;@JsonKey(name: 'Lat') double get lat;@JsonKey(name: 'Lon') double get lon;@JsonKey(name: 'IsDefault') bool get isDefault;
/// Create a copy of PickupLocationAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupLocationAddRequestCopyWith<PickupLocationAddRequest> get copyWith => _$PickupLocationAddRequestCopyWithImpl<PickupLocationAddRequest>(this as PickupLocationAddRequest, _$identity);

  /// Serializes this PickupLocationAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupLocationAddRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,label,address,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocationAddRequest(userId: $userId, label: $label, address: $address, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $PickupLocationAddRequestCopyWith<$Res>  {
  factory $PickupLocationAddRequestCopyWith(PickupLocationAddRequest value, $Res Function(PickupLocationAddRequest) _then) = _$PickupLocationAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Label') LocationLabel label,@JsonKey(name: 'Address') String address,@JsonKey(name: 'Notes') String? notes,@JsonKey(name: 'Lat') double lat,@JsonKey(name: 'Lon') double lon,@JsonKey(name: 'IsDefault') bool isDefault
});




}
/// @nodoc
class _$PickupLocationAddRequestCopyWithImpl<$Res>
    implements $PickupLocationAddRequestCopyWith<$Res> {
  _$PickupLocationAddRequestCopyWithImpl(this._self, this._then);

  final PickupLocationAddRequest _self;
  final $Res Function(PickupLocationAddRequest) _then;

/// Create a copy of PickupLocationAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? label = null,Object? address = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocationLabel,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupLocationAddRequest].
extension PickupLocationAddRequestPatterns on PickupLocationAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupLocationAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupLocationAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupLocationAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _PickupLocationAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupLocationAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PickupLocationAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupLocationAddRequest() when $default != null:
return $default(_that.userId,_that.label,_that.address,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _PickupLocationAddRequest():
return $default(_that.userId,_that.label,_that.address,_that.notes,_that.lat,_that.lon,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _PickupLocationAddRequest() when $default != null:
return $default(_that.userId,_that.label,_that.address,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupLocationAddRequest implements PickupLocationAddRequest {
  const _PickupLocationAddRequest({@JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'Label') required this.label, @JsonKey(name: 'Address') required this.address, @JsonKey(name: 'Notes') this.notes, @JsonKey(name: 'Lat') required this.lat, @JsonKey(name: 'Lon') required this.lon, @JsonKey(name: 'IsDefault') required this.isDefault});
  factory _PickupLocationAddRequest.fromJson(Map<String, dynamic> json) => _$PickupLocationAddRequestFromJson(json);

@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'Label') final  LocationLabel label;
@override@JsonKey(name: 'Address') final  String address;
@override@JsonKey(name: 'Notes') final  String? notes;
@override@JsonKey(name: 'Lat') final  double lat;
@override@JsonKey(name: 'Lon') final  double lon;
@override@JsonKey(name: 'IsDefault') final  bool isDefault;

/// Create a copy of PickupLocationAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupLocationAddRequestCopyWith<_PickupLocationAddRequest> get copyWith => __$PickupLocationAddRequestCopyWithImpl<_PickupLocationAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupLocationAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupLocationAddRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,label,address,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocationAddRequest(userId: $userId, label: $label, address: $address, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$PickupLocationAddRequestCopyWith<$Res> implements $PickupLocationAddRequestCopyWith<$Res> {
  factory _$PickupLocationAddRequestCopyWith(_PickupLocationAddRequest value, $Res Function(_PickupLocationAddRequest) _then) = __$PickupLocationAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Label') LocationLabel label,@JsonKey(name: 'Address') String address,@JsonKey(name: 'Notes') String? notes,@JsonKey(name: 'Lat') double lat,@JsonKey(name: 'Lon') double lon,@JsonKey(name: 'IsDefault') bool isDefault
});




}
/// @nodoc
class __$PickupLocationAddRequestCopyWithImpl<$Res>
    implements _$PickupLocationAddRequestCopyWith<$Res> {
  __$PickupLocationAddRequestCopyWithImpl(this._self, this._then);

  final _PickupLocationAddRequest _self;
  final $Res Function(_PickupLocationAddRequest) _then;

/// Create a copy of PickupLocationAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? label = null,Object? address = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_PickupLocationAddRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as LocationLabel,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
