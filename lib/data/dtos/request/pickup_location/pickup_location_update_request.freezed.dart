// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_location_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickupLocationUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Label') LocationLabel get label;@JsonKey(name: 'Address') String get address;@JsonKey(name: 'LocationPreset') LocationPreset get locationPreset;@JsonKey(name: 'Notes') String? get notes;@JsonKey(name: 'Lat') double get lat;@JsonKey(name: 'Lon') double get lon;@JsonKey(name: 'IsDefault') bool get isDefault;
/// Create a copy of PickupLocationUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupLocationUpdateRequestCopyWith<PickupLocationUpdateRequest> get copyWith => _$PickupLocationUpdateRequestCopyWithImpl<PickupLocationUpdateRequest>(this as PickupLocationUpdateRequest, _$identity);

  /// Serializes this PickupLocationUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupLocationUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationPreset, locationPreset) || other.locationPreset == locationPreset)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,address,locationPreset,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocationUpdateRequest(id: $id, label: $label, address: $address, locationPreset: $locationPreset, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $PickupLocationUpdateRequestCopyWith<$Res>  {
  factory $PickupLocationUpdateRequestCopyWith(PickupLocationUpdateRequest value, $Res Function(PickupLocationUpdateRequest) _then) = _$PickupLocationUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Label') LocationLabel label,@JsonKey(name: 'Address') String address,@JsonKey(name: 'LocationPreset') LocationPreset locationPreset,@JsonKey(name: 'Notes') String? notes,@JsonKey(name: 'Lat') double lat,@JsonKey(name: 'Lon') double lon,@JsonKey(name: 'IsDefault') bool isDefault
});




}
/// @nodoc
class _$PickupLocationUpdateRequestCopyWithImpl<$Res>
    implements $PickupLocationUpdateRequestCopyWith<$Res> {
  _$PickupLocationUpdateRequestCopyWithImpl(this._self, this._then);

  final PickupLocationUpdateRequest _self;
  final $Res Function(PickupLocationUpdateRequest) _then;

/// Create a copy of PickupLocationUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? address = null,Object? locationPreset = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [PickupLocationUpdateRequest].
extension PickupLocationUpdateRequestPatterns on PickupLocationUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupLocationUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupLocationUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupLocationUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _PickupLocationUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupLocationUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PickupLocationUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'LocationPreset')  LocationPreset locationPreset, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupLocationUpdateRequest() when $default != null:
return $default(_that.id,_that.label,_that.address,_that.locationPreset,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'LocationPreset')  LocationPreset locationPreset, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _PickupLocationUpdateRequest():
return $default(_that.id,_that.label,_that.address,_that.locationPreset,_that.notes,_that.lat,_that.lon,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Label')  LocationLabel label, @JsonKey(name: 'Address')  String address, @JsonKey(name: 'LocationPreset')  LocationPreset locationPreset, @JsonKey(name: 'Notes')  String? notes, @JsonKey(name: 'Lat')  double lat, @JsonKey(name: 'Lon')  double lon, @JsonKey(name: 'IsDefault')  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _PickupLocationUpdateRequest() when $default != null:
return $default(_that.id,_that.label,_that.address,_that.locationPreset,_that.notes,_that.lat,_that.lon,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupLocationUpdateRequest implements PickupLocationUpdateRequest {
  const _PickupLocationUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Label') required this.label, @JsonKey(name: 'Address') required this.address, @JsonKey(name: 'LocationPreset') required this.locationPreset, @JsonKey(name: 'Notes') this.notes, @JsonKey(name: 'Lat') required this.lat, @JsonKey(name: 'Lon') required this.lon, @JsonKey(name: 'IsDefault') required this.isDefault});
  factory _PickupLocationUpdateRequest.fromJson(Map<String, dynamic> json) => _$PickupLocationUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Label') final  LocationLabel label;
@override@JsonKey(name: 'Address') final  String address;
@override@JsonKey(name: 'LocationPreset') final  LocationPreset locationPreset;
@override@JsonKey(name: 'Notes') final  String? notes;
@override@JsonKey(name: 'Lat') final  double lat;
@override@JsonKey(name: 'Lon') final  double lon;
@override@JsonKey(name: 'IsDefault') final  bool isDefault;

/// Create a copy of PickupLocationUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupLocationUpdateRequestCopyWith<_PickupLocationUpdateRequest> get copyWith => __$PickupLocationUpdateRequestCopyWithImpl<_PickupLocationUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupLocationUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupLocationUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationPreset, locationPreset) || other.locationPreset == locationPreset)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,address,locationPreset,notes,lat,lon,isDefault);

@override
String toString() {
  return 'PickupLocationUpdateRequest(id: $id, label: $label, address: $address, locationPreset: $locationPreset, notes: $notes, lat: $lat, lon: $lon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$PickupLocationUpdateRequestCopyWith<$Res> implements $PickupLocationUpdateRequestCopyWith<$Res> {
  factory _$PickupLocationUpdateRequestCopyWith(_PickupLocationUpdateRequest value, $Res Function(_PickupLocationUpdateRequest) _then) = __$PickupLocationUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Label') LocationLabel label,@JsonKey(name: 'Address') String address,@JsonKey(name: 'LocationPreset') LocationPreset locationPreset,@JsonKey(name: 'Notes') String? notes,@JsonKey(name: 'Lat') double lat,@JsonKey(name: 'Lon') double lon,@JsonKey(name: 'IsDefault') bool isDefault
});




}
/// @nodoc
class __$PickupLocationUpdateRequestCopyWithImpl<$Res>
    implements _$PickupLocationUpdateRequestCopyWith<$Res> {
  __$PickupLocationUpdateRequestCopyWithImpl(this._self, this._then);

  final _PickupLocationUpdateRequest _self;
  final $Res Function(_PickupLocationUpdateRequest) _then;

/// Create a copy of PickupLocationUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? address = null,Object? locationPreset = null,Object? notes = freezed,Object? lat = null,Object? lon = null,Object? isDefault = null,}) {
  return _then(_PickupLocationUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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
