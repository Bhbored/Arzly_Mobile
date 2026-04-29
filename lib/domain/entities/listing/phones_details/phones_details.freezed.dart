// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phones_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhonesDetails {

 String? get listingId; PhoneBrand? get phoneBrand; PhoneCondition? get phoneCondition; PhoneStorage? get storage; PhoneColor? get color; AccessoryBrand? get accessoryBrand; MobileAccessoryType? get accessoryItemType; MobileOperator? get operator; MembershipType? get membershipType; WatchBrand? get watchBrand; WatchStorage? get watchStorage; BandMaterial? get bandMaterial; BandColor? get bandColor;
/// Create a copy of PhonesDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhonesDetailsCopyWith<PhonesDetails> get copyWith => _$PhonesDetailsCopyWithImpl<PhonesDetails>(this as PhonesDetails, _$identity);

  /// Serializes this PhonesDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhonesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.phoneBrand, phoneBrand) || other.phoneBrand == phoneBrand)&&(identical(other.phoneCondition, phoneCondition) || other.phoneCondition == phoneCondition)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.color, color) || other.color == color)&&(identical(other.accessoryBrand, accessoryBrand) || other.accessoryBrand == accessoryBrand)&&(identical(other.accessoryItemType, accessoryItemType) || other.accessoryItemType == accessoryItemType)&&(identical(other.operator, operator) || other.operator == operator)&&(identical(other.membershipType, membershipType) || other.membershipType == membershipType)&&(identical(other.watchBrand, watchBrand) || other.watchBrand == watchBrand)&&(identical(other.watchStorage, watchStorage) || other.watchStorage == watchStorage)&&(identical(other.bandMaterial, bandMaterial) || other.bandMaterial == bandMaterial)&&(identical(other.bandColor, bandColor) || other.bandColor == bandColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,phoneBrand,phoneCondition,storage,color,accessoryBrand,accessoryItemType,operator,membershipType,watchBrand,watchStorage,bandMaterial,bandColor);

@override
String toString() {
  return 'PhonesDetails(listingId: $listingId, phoneBrand: $phoneBrand, phoneCondition: $phoneCondition, storage: $storage, color: $color, accessoryBrand: $accessoryBrand, accessoryItemType: $accessoryItemType, operator: $operator, membershipType: $membershipType, watchBrand: $watchBrand, watchStorage: $watchStorage, bandMaterial: $bandMaterial, bandColor: $bandColor)';
}


}

/// @nodoc
abstract mixin class $PhonesDetailsCopyWith<$Res>  {
  factory $PhonesDetailsCopyWith(PhonesDetails value, $Res Function(PhonesDetails) _then) = _$PhonesDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, PhoneBrand? phoneBrand, PhoneCondition? phoneCondition, PhoneStorage? storage, PhoneColor? color, AccessoryBrand? accessoryBrand, MobileAccessoryType? accessoryItemType, MobileOperator? operator, MembershipType? membershipType, WatchBrand? watchBrand, WatchStorage? watchStorage, BandMaterial? bandMaterial, BandColor? bandColor
});




}
/// @nodoc
class _$PhonesDetailsCopyWithImpl<$Res>
    implements $PhonesDetailsCopyWith<$Res> {
  _$PhonesDetailsCopyWithImpl(this._self, this._then);

  final PhonesDetails _self;
  final $Res Function(PhonesDetails) _then;

/// Create a copy of PhonesDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? phoneBrand = freezed,Object? phoneCondition = freezed,Object? storage = freezed,Object? color = freezed,Object? accessoryBrand = freezed,Object? accessoryItemType = freezed,Object? operator = freezed,Object? membershipType = freezed,Object? watchBrand = freezed,Object? watchStorage = freezed,Object? bandMaterial = freezed,Object? bandColor = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,phoneBrand: freezed == phoneBrand ? _self.phoneBrand : phoneBrand // ignore: cast_nullable_to_non_nullable
as PhoneBrand?,phoneCondition: freezed == phoneCondition ? _self.phoneCondition : phoneCondition // ignore: cast_nullable_to_non_nullable
as PhoneCondition?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as PhoneStorage?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as PhoneColor?,accessoryBrand: freezed == accessoryBrand ? _self.accessoryBrand : accessoryBrand // ignore: cast_nullable_to_non_nullable
as AccessoryBrand?,accessoryItemType: freezed == accessoryItemType ? _self.accessoryItemType : accessoryItemType // ignore: cast_nullable_to_non_nullable
as MobileAccessoryType?,operator: freezed == operator ? _self.operator : operator // ignore: cast_nullable_to_non_nullable
as MobileOperator?,membershipType: freezed == membershipType ? _self.membershipType : membershipType // ignore: cast_nullable_to_non_nullable
as MembershipType?,watchBrand: freezed == watchBrand ? _self.watchBrand : watchBrand // ignore: cast_nullable_to_non_nullable
as WatchBrand?,watchStorage: freezed == watchStorage ? _self.watchStorage : watchStorage // ignore: cast_nullable_to_non_nullable
as WatchStorage?,bandMaterial: freezed == bandMaterial ? _self.bandMaterial : bandMaterial // ignore: cast_nullable_to_non_nullable
as BandMaterial?,bandColor: freezed == bandColor ? _self.bandColor : bandColor // ignore: cast_nullable_to_non_nullable
as BandColor?,
  ));
}

}


/// Adds pattern-matching-related methods to [PhonesDetails].
extension PhonesDetailsPatterns on PhonesDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhonesDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhonesDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhonesDetails value)  $default,){
final _that = this;
switch (_that) {
case _PhonesDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhonesDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PhonesDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  PhoneBrand? phoneBrand,  PhoneCondition? phoneCondition,  PhoneStorage? storage,  PhoneColor? color,  AccessoryBrand? accessoryBrand,  MobileAccessoryType? accessoryItemType,  MobileOperator? operator,  MembershipType? membershipType,  WatchBrand? watchBrand,  WatchStorage? watchStorage,  BandMaterial? bandMaterial,  BandColor? bandColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhonesDetails() when $default != null:
return $default(_that.listingId,_that.phoneBrand,_that.phoneCondition,_that.storage,_that.color,_that.accessoryBrand,_that.accessoryItemType,_that.operator,_that.membershipType,_that.watchBrand,_that.watchStorage,_that.bandMaterial,_that.bandColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  PhoneBrand? phoneBrand,  PhoneCondition? phoneCondition,  PhoneStorage? storage,  PhoneColor? color,  AccessoryBrand? accessoryBrand,  MobileAccessoryType? accessoryItemType,  MobileOperator? operator,  MembershipType? membershipType,  WatchBrand? watchBrand,  WatchStorage? watchStorage,  BandMaterial? bandMaterial,  BandColor? bandColor)  $default,) {final _that = this;
switch (_that) {
case _PhonesDetails():
return $default(_that.listingId,_that.phoneBrand,_that.phoneCondition,_that.storage,_that.color,_that.accessoryBrand,_that.accessoryItemType,_that.operator,_that.membershipType,_that.watchBrand,_that.watchStorage,_that.bandMaterial,_that.bandColor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  PhoneBrand? phoneBrand,  PhoneCondition? phoneCondition,  PhoneStorage? storage,  PhoneColor? color,  AccessoryBrand? accessoryBrand,  MobileAccessoryType? accessoryItemType,  MobileOperator? operator,  MembershipType? membershipType,  WatchBrand? watchBrand,  WatchStorage? watchStorage,  BandMaterial? bandMaterial,  BandColor? bandColor)?  $default,) {final _that = this;
switch (_that) {
case _PhonesDetails() when $default != null:
return $default(_that.listingId,_that.phoneBrand,_that.phoneCondition,_that.storage,_that.color,_that.accessoryBrand,_that.accessoryItemType,_that.operator,_that.membershipType,_that.watchBrand,_that.watchStorage,_that.bandMaterial,_that.bandColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhonesDetails implements PhonesDetails {
  const _PhonesDetails({this.listingId, this.phoneBrand, this.phoneCondition, this.storage, this.color, this.accessoryBrand, this.accessoryItemType, this.operator, this.membershipType, this.watchBrand, this.watchStorage, this.bandMaterial, this.bandColor});
  factory _PhonesDetails.fromJson(Map<String, dynamic> json) => _$PhonesDetailsFromJson(json);

@override final  String? listingId;
@override final  PhoneBrand? phoneBrand;
@override final  PhoneCondition? phoneCondition;
@override final  PhoneStorage? storage;
@override final  PhoneColor? color;
@override final  AccessoryBrand? accessoryBrand;
@override final  MobileAccessoryType? accessoryItemType;
@override final  MobileOperator? operator;
@override final  MembershipType? membershipType;
@override final  WatchBrand? watchBrand;
@override final  WatchStorage? watchStorage;
@override final  BandMaterial? bandMaterial;
@override final  BandColor? bandColor;

/// Create a copy of PhonesDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhonesDetailsCopyWith<_PhonesDetails> get copyWith => __$PhonesDetailsCopyWithImpl<_PhonesDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhonesDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhonesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.phoneBrand, phoneBrand) || other.phoneBrand == phoneBrand)&&(identical(other.phoneCondition, phoneCondition) || other.phoneCondition == phoneCondition)&&(identical(other.storage, storage) || other.storage == storage)&&(identical(other.color, color) || other.color == color)&&(identical(other.accessoryBrand, accessoryBrand) || other.accessoryBrand == accessoryBrand)&&(identical(other.accessoryItemType, accessoryItemType) || other.accessoryItemType == accessoryItemType)&&(identical(other.operator, operator) || other.operator == operator)&&(identical(other.membershipType, membershipType) || other.membershipType == membershipType)&&(identical(other.watchBrand, watchBrand) || other.watchBrand == watchBrand)&&(identical(other.watchStorage, watchStorage) || other.watchStorage == watchStorage)&&(identical(other.bandMaterial, bandMaterial) || other.bandMaterial == bandMaterial)&&(identical(other.bandColor, bandColor) || other.bandColor == bandColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,phoneBrand,phoneCondition,storage,color,accessoryBrand,accessoryItemType,operator,membershipType,watchBrand,watchStorage,bandMaterial,bandColor);

@override
String toString() {
  return 'PhonesDetails(listingId: $listingId, phoneBrand: $phoneBrand, phoneCondition: $phoneCondition, storage: $storage, color: $color, accessoryBrand: $accessoryBrand, accessoryItemType: $accessoryItemType, operator: $operator, membershipType: $membershipType, watchBrand: $watchBrand, watchStorage: $watchStorage, bandMaterial: $bandMaterial, bandColor: $bandColor)';
}


}

/// @nodoc
abstract mixin class _$PhonesDetailsCopyWith<$Res> implements $PhonesDetailsCopyWith<$Res> {
  factory _$PhonesDetailsCopyWith(_PhonesDetails value, $Res Function(_PhonesDetails) _then) = __$PhonesDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, PhoneBrand? phoneBrand, PhoneCondition? phoneCondition, PhoneStorage? storage, PhoneColor? color, AccessoryBrand? accessoryBrand, MobileAccessoryType? accessoryItemType, MobileOperator? operator, MembershipType? membershipType, WatchBrand? watchBrand, WatchStorage? watchStorage, BandMaterial? bandMaterial, BandColor? bandColor
});




}
/// @nodoc
class __$PhonesDetailsCopyWithImpl<$Res>
    implements _$PhonesDetailsCopyWith<$Res> {
  __$PhonesDetailsCopyWithImpl(this._self, this._then);

  final _PhonesDetails _self;
  final $Res Function(_PhonesDetails) _then;

/// Create a copy of PhonesDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? phoneBrand = freezed,Object? phoneCondition = freezed,Object? storage = freezed,Object? color = freezed,Object? accessoryBrand = freezed,Object? accessoryItemType = freezed,Object? operator = freezed,Object? membershipType = freezed,Object? watchBrand = freezed,Object? watchStorage = freezed,Object? bandMaterial = freezed,Object? bandColor = freezed,}) {
  return _then(_PhonesDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,phoneBrand: freezed == phoneBrand ? _self.phoneBrand : phoneBrand // ignore: cast_nullable_to_non_nullable
as PhoneBrand?,phoneCondition: freezed == phoneCondition ? _self.phoneCondition : phoneCondition // ignore: cast_nullable_to_non_nullable
as PhoneCondition?,storage: freezed == storage ? _self.storage : storage // ignore: cast_nullable_to_non_nullable
as PhoneStorage?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as PhoneColor?,accessoryBrand: freezed == accessoryBrand ? _self.accessoryBrand : accessoryBrand // ignore: cast_nullable_to_non_nullable
as AccessoryBrand?,accessoryItemType: freezed == accessoryItemType ? _self.accessoryItemType : accessoryItemType // ignore: cast_nullable_to_non_nullable
as MobileAccessoryType?,operator: freezed == operator ? _self.operator : operator // ignore: cast_nullable_to_non_nullable
as MobileOperator?,membershipType: freezed == membershipType ? _self.membershipType : membershipType // ignore: cast_nullable_to_non_nullable
as MembershipType?,watchBrand: freezed == watchBrand ? _self.watchBrand : watchBrand // ignore: cast_nullable_to_non_nullable
as WatchBrand?,watchStorage: freezed == watchStorage ? _self.watchStorage : watchStorage // ignore: cast_nullable_to_non_nullable
as WatchStorage?,bandMaterial: freezed == bandMaterial ? _self.bandMaterial : bandMaterial // ignore: cast_nullable_to_non_nullable
as BandMaterial?,bandColor: freezed == bandColor ? _self.bandColor : bandColor // ignore: cast_nullable_to_non_nullable
as BandColor?,
  ));
}


}

// dart format on
