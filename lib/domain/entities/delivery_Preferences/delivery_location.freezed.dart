// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryLocation {

 String get id; String get label; String get address; String? get notes; bool get isDefault;
/// Create a copy of DeliveryLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryLocationCopyWith<DeliveryLocation> get copyWith => _$DeliveryLocationCopyWithImpl<DeliveryLocation>(this as DeliveryLocation, _$identity);

  /// Serializes this DeliveryLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,address,notes,isDefault);

@override
String toString() {
  return 'DeliveryLocation(id: $id, label: $label, address: $address, notes: $notes, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $DeliveryLocationCopyWith<$Res>  {
  factory $DeliveryLocationCopyWith(DeliveryLocation value, $Res Function(DeliveryLocation) _then) = _$DeliveryLocationCopyWithImpl;
@useResult
$Res call({
 String id, String label, String address, String? notes, bool isDefault
});




}
/// @nodoc
class _$DeliveryLocationCopyWithImpl<$Res>
    implements $DeliveryLocationCopyWith<$Res> {
  _$DeliveryLocationCopyWithImpl(this._self, this._then);

  final DeliveryLocation _self;
  final $Res Function(DeliveryLocation) _then;

/// Create a copy of DeliveryLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? address = null,Object? notes = freezed,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryLocation].
extension DeliveryLocationPatterns on DeliveryLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryLocation value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryLocation value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String address,  String? notes,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryLocation() when $default != null:
return $default(_that.id,_that.label,_that.address,_that.notes,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String address,  String? notes,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _DeliveryLocation():
return $default(_that.id,_that.label,_that.address,_that.notes,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String address,  String? notes,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryLocation() when $default != null:
return $default(_that.id,_that.label,_that.address,_that.notes,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryLocation implements DeliveryLocation {
  const _DeliveryLocation({required this.id, required this.label, required this.address, this.notes, required this.isDefault});
  factory _DeliveryLocation.fromJson(Map<String, dynamic> json) => _$DeliveryLocationFromJson(json);

@override final  String id;
@override final  String label;
@override final  String address;
@override final  String? notes;
@override final  bool isDefault;

/// Create a copy of DeliveryLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryLocationCopyWith<_DeliveryLocation> get copyWith => __$DeliveryLocationCopyWithImpl<_DeliveryLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,address,notes,isDefault);

@override
String toString() {
  return 'DeliveryLocation(id: $id, label: $label, address: $address, notes: $notes, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$DeliveryLocationCopyWith<$Res> implements $DeliveryLocationCopyWith<$Res> {
  factory _$DeliveryLocationCopyWith(_DeliveryLocation value, $Res Function(_DeliveryLocation) _then) = __$DeliveryLocationCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String address, String? notes, bool isDefault
});




}
/// @nodoc
class __$DeliveryLocationCopyWithImpl<$Res>
    implements _$DeliveryLocationCopyWith<$Res> {
  __$DeliveryLocationCopyWithImpl(this._self, this._then);

  final _DeliveryLocation _self;
  final $Res Function(_DeliveryLocation) _then;

/// Create a copy of DeliveryLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? address = null,Object? notes = freezed,Object? isDefault = null,}) {
  return _then(_DeliveryLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
