// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fashion_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FashionDetails {

 String? get listingId; MensClothingType? get mensClothingType; FashionCondition? get condition; MensAccessoryType? get mensAccessoryType; WomensClothingType? get womensClothingType; WomensAccessoryType? get womensAccessoryType; CosmeticType? get cosmeticType; JewelryType? get jewelryType; JewelryMaterial? get jewelryMaterial; WatchGender? get watchGender;
/// Create a copy of FashionDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FashionDetailsCopyWith<FashionDetails> get copyWith => _$FashionDetailsCopyWithImpl<FashionDetails>(this as FashionDetails, _$identity);

  /// Serializes this FashionDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FashionDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.mensClothingType, mensClothingType) || other.mensClothingType == mensClothingType)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.mensAccessoryType, mensAccessoryType) || other.mensAccessoryType == mensAccessoryType)&&(identical(other.womensClothingType, womensClothingType) || other.womensClothingType == womensClothingType)&&(identical(other.womensAccessoryType, womensAccessoryType) || other.womensAccessoryType == womensAccessoryType)&&(identical(other.cosmeticType, cosmeticType) || other.cosmeticType == cosmeticType)&&(identical(other.jewelryType, jewelryType) || other.jewelryType == jewelryType)&&(identical(other.jewelryMaterial, jewelryMaterial) || other.jewelryMaterial == jewelryMaterial)&&(identical(other.watchGender, watchGender) || other.watchGender == watchGender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,mensClothingType,condition,mensAccessoryType,womensClothingType,womensAccessoryType,cosmeticType,jewelryType,jewelryMaterial,watchGender);

@override
String toString() {
  return 'FashionDetails(listingId: $listingId, mensClothingType: $mensClothingType, condition: $condition, mensAccessoryType: $mensAccessoryType, womensClothingType: $womensClothingType, womensAccessoryType: $womensAccessoryType, cosmeticType: $cosmeticType, jewelryType: $jewelryType, jewelryMaterial: $jewelryMaterial, watchGender: $watchGender)';
}


}

/// @nodoc
abstract mixin class $FashionDetailsCopyWith<$Res>  {
  factory $FashionDetailsCopyWith(FashionDetails value, $Res Function(FashionDetails) _then) = _$FashionDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, MensClothingType? mensClothingType, FashionCondition? condition, MensAccessoryType? mensAccessoryType, WomensClothingType? womensClothingType, WomensAccessoryType? womensAccessoryType, CosmeticType? cosmeticType, JewelryType? jewelryType, JewelryMaterial? jewelryMaterial, WatchGender? watchGender
});




}
/// @nodoc
class _$FashionDetailsCopyWithImpl<$Res>
    implements $FashionDetailsCopyWith<$Res> {
  _$FashionDetailsCopyWithImpl(this._self, this._then);

  final FashionDetails _self;
  final $Res Function(FashionDetails) _then;

/// Create a copy of FashionDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? mensClothingType = freezed,Object? condition = freezed,Object? mensAccessoryType = freezed,Object? womensClothingType = freezed,Object? womensAccessoryType = freezed,Object? cosmeticType = freezed,Object? jewelryType = freezed,Object? jewelryMaterial = freezed,Object? watchGender = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,mensClothingType: freezed == mensClothingType ? _self.mensClothingType : mensClothingType // ignore: cast_nullable_to_non_nullable
as MensClothingType?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as FashionCondition?,mensAccessoryType: freezed == mensAccessoryType ? _self.mensAccessoryType : mensAccessoryType // ignore: cast_nullable_to_non_nullable
as MensAccessoryType?,womensClothingType: freezed == womensClothingType ? _self.womensClothingType : womensClothingType // ignore: cast_nullable_to_non_nullable
as WomensClothingType?,womensAccessoryType: freezed == womensAccessoryType ? _self.womensAccessoryType : womensAccessoryType // ignore: cast_nullable_to_non_nullable
as WomensAccessoryType?,cosmeticType: freezed == cosmeticType ? _self.cosmeticType : cosmeticType // ignore: cast_nullable_to_non_nullable
as CosmeticType?,jewelryType: freezed == jewelryType ? _self.jewelryType : jewelryType // ignore: cast_nullable_to_non_nullable
as JewelryType?,jewelryMaterial: freezed == jewelryMaterial ? _self.jewelryMaterial : jewelryMaterial // ignore: cast_nullable_to_non_nullable
as JewelryMaterial?,watchGender: freezed == watchGender ? _self.watchGender : watchGender // ignore: cast_nullable_to_non_nullable
as WatchGender?,
  ));
}

}


/// Adds pattern-matching-related methods to [FashionDetails].
extension FashionDetailsPatterns on FashionDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FashionDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FashionDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FashionDetails value)  $default,){
final _that = this;
switch (_that) {
case _FashionDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FashionDetails value)?  $default,){
final _that = this;
switch (_that) {
case _FashionDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  MensClothingType? mensClothingType,  FashionCondition? condition,  MensAccessoryType? mensAccessoryType,  WomensClothingType? womensClothingType,  WomensAccessoryType? womensAccessoryType,  CosmeticType? cosmeticType,  JewelryType? jewelryType,  JewelryMaterial? jewelryMaterial,  WatchGender? watchGender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FashionDetails() when $default != null:
return $default(_that.listingId,_that.mensClothingType,_that.condition,_that.mensAccessoryType,_that.womensClothingType,_that.womensAccessoryType,_that.cosmeticType,_that.jewelryType,_that.jewelryMaterial,_that.watchGender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  MensClothingType? mensClothingType,  FashionCondition? condition,  MensAccessoryType? mensAccessoryType,  WomensClothingType? womensClothingType,  WomensAccessoryType? womensAccessoryType,  CosmeticType? cosmeticType,  JewelryType? jewelryType,  JewelryMaterial? jewelryMaterial,  WatchGender? watchGender)  $default,) {final _that = this;
switch (_that) {
case _FashionDetails():
return $default(_that.listingId,_that.mensClothingType,_that.condition,_that.mensAccessoryType,_that.womensClothingType,_that.womensAccessoryType,_that.cosmeticType,_that.jewelryType,_that.jewelryMaterial,_that.watchGender);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  MensClothingType? mensClothingType,  FashionCondition? condition,  MensAccessoryType? mensAccessoryType,  WomensClothingType? womensClothingType,  WomensAccessoryType? womensAccessoryType,  CosmeticType? cosmeticType,  JewelryType? jewelryType,  JewelryMaterial? jewelryMaterial,  WatchGender? watchGender)?  $default,) {final _that = this;
switch (_that) {
case _FashionDetails() when $default != null:
return $default(_that.listingId,_that.mensClothingType,_that.condition,_that.mensAccessoryType,_that.womensClothingType,_that.womensAccessoryType,_that.cosmeticType,_that.jewelryType,_that.jewelryMaterial,_that.watchGender);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FashionDetails implements FashionDetails {
  const _FashionDetails({this.listingId, this.mensClothingType, this.condition, this.mensAccessoryType, this.womensClothingType, this.womensAccessoryType, this.cosmeticType, this.jewelryType, this.jewelryMaterial, this.watchGender});
  factory _FashionDetails.fromJson(Map<String, dynamic> json) => _$FashionDetailsFromJson(json);

@override final  String? listingId;
@override final  MensClothingType? mensClothingType;
@override final  FashionCondition? condition;
@override final  MensAccessoryType? mensAccessoryType;
@override final  WomensClothingType? womensClothingType;
@override final  WomensAccessoryType? womensAccessoryType;
@override final  CosmeticType? cosmeticType;
@override final  JewelryType? jewelryType;
@override final  JewelryMaterial? jewelryMaterial;
@override final  WatchGender? watchGender;

/// Create a copy of FashionDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FashionDetailsCopyWith<_FashionDetails> get copyWith => __$FashionDetailsCopyWithImpl<_FashionDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FashionDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FashionDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.mensClothingType, mensClothingType) || other.mensClothingType == mensClothingType)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.mensAccessoryType, mensAccessoryType) || other.mensAccessoryType == mensAccessoryType)&&(identical(other.womensClothingType, womensClothingType) || other.womensClothingType == womensClothingType)&&(identical(other.womensAccessoryType, womensAccessoryType) || other.womensAccessoryType == womensAccessoryType)&&(identical(other.cosmeticType, cosmeticType) || other.cosmeticType == cosmeticType)&&(identical(other.jewelryType, jewelryType) || other.jewelryType == jewelryType)&&(identical(other.jewelryMaterial, jewelryMaterial) || other.jewelryMaterial == jewelryMaterial)&&(identical(other.watchGender, watchGender) || other.watchGender == watchGender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,mensClothingType,condition,mensAccessoryType,womensClothingType,womensAccessoryType,cosmeticType,jewelryType,jewelryMaterial,watchGender);

@override
String toString() {
  return 'FashionDetails(listingId: $listingId, mensClothingType: $mensClothingType, condition: $condition, mensAccessoryType: $mensAccessoryType, womensClothingType: $womensClothingType, womensAccessoryType: $womensAccessoryType, cosmeticType: $cosmeticType, jewelryType: $jewelryType, jewelryMaterial: $jewelryMaterial, watchGender: $watchGender)';
}


}

/// @nodoc
abstract mixin class _$FashionDetailsCopyWith<$Res> implements $FashionDetailsCopyWith<$Res> {
  factory _$FashionDetailsCopyWith(_FashionDetails value, $Res Function(_FashionDetails) _then) = __$FashionDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, MensClothingType? mensClothingType, FashionCondition? condition, MensAccessoryType? mensAccessoryType, WomensClothingType? womensClothingType, WomensAccessoryType? womensAccessoryType, CosmeticType? cosmeticType, JewelryType? jewelryType, JewelryMaterial? jewelryMaterial, WatchGender? watchGender
});




}
/// @nodoc
class __$FashionDetailsCopyWithImpl<$Res>
    implements _$FashionDetailsCopyWith<$Res> {
  __$FashionDetailsCopyWithImpl(this._self, this._then);

  final _FashionDetails _self;
  final $Res Function(_FashionDetails) _then;

/// Create a copy of FashionDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? mensClothingType = freezed,Object? condition = freezed,Object? mensAccessoryType = freezed,Object? womensClothingType = freezed,Object? womensAccessoryType = freezed,Object? cosmeticType = freezed,Object? jewelryType = freezed,Object? jewelryMaterial = freezed,Object? watchGender = freezed,}) {
  return _then(_FashionDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,mensClothingType: freezed == mensClothingType ? _self.mensClothingType : mensClothingType // ignore: cast_nullable_to_non_nullable
as MensClothingType?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as FashionCondition?,mensAccessoryType: freezed == mensAccessoryType ? _self.mensAccessoryType : mensAccessoryType // ignore: cast_nullable_to_non_nullable
as MensAccessoryType?,womensClothingType: freezed == womensClothingType ? _self.womensClothingType : womensClothingType // ignore: cast_nullable_to_non_nullable
as WomensClothingType?,womensAccessoryType: freezed == womensAccessoryType ? _self.womensAccessoryType : womensAccessoryType // ignore: cast_nullable_to_non_nullable
as WomensAccessoryType?,cosmeticType: freezed == cosmeticType ? _self.cosmeticType : cosmeticType // ignore: cast_nullable_to_non_nullable
as CosmeticType?,jewelryType: freezed == jewelryType ? _self.jewelryType : jewelryType // ignore: cast_nullable_to_non_nullable
as JewelryType?,jewelryMaterial: freezed == jewelryMaterial ? _self.jewelryMaterial : jewelryMaterial // ignore: cast_nullable_to_non_nullable
as JewelryMaterial?,watchGender: freezed == watchGender ? _self.watchGender : watchGender // ignore: cast_nullable_to_non_nullable
as WatchGender?,
  ));
}


}

// dart format on
