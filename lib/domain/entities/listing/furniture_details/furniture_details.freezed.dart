// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'furniture_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FurnitureDetails {

 String? get listingId; LivingRoomType? get livingRoomType; FurnitureCondition? get condition; BedroomType? get bedroomType; DiningRoomType? get diningRoomType; KitchenwareType? get kitchenwareType; BathroomType? get bathroomType; HomeDecorType? get homeDecorType; GardenType? get gardenType;
/// Create a copy of FurnitureDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FurnitureDetailsCopyWith<FurnitureDetails> get copyWith => _$FurnitureDetailsCopyWithImpl<FurnitureDetails>(this as FurnitureDetails, _$identity);

  /// Serializes this FurnitureDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FurnitureDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.livingRoomType, livingRoomType) || other.livingRoomType == livingRoomType)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.bedroomType, bedroomType) || other.bedroomType == bedroomType)&&(identical(other.diningRoomType, diningRoomType) || other.diningRoomType == diningRoomType)&&(identical(other.kitchenwareType, kitchenwareType) || other.kitchenwareType == kitchenwareType)&&(identical(other.bathroomType, bathroomType) || other.bathroomType == bathroomType)&&(identical(other.homeDecorType, homeDecorType) || other.homeDecorType == homeDecorType)&&(identical(other.gardenType, gardenType) || other.gardenType == gardenType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,livingRoomType,condition,bedroomType,diningRoomType,kitchenwareType,bathroomType,homeDecorType,gardenType);

@override
String toString() {
  return 'FurnitureDetails(listingId: $listingId, livingRoomType: $livingRoomType, condition: $condition, bedroomType: $bedroomType, diningRoomType: $diningRoomType, kitchenwareType: $kitchenwareType, bathroomType: $bathroomType, homeDecorType: $homeDecorType, gardenType: $gardenType)';
}


}

/// @nodoc
abstract mixin class $FurnitureDetailsCopyWith<$Res>  {
  factory $FurnitureDetailsCopyWith(FurnitureDetails value, $Res Function(FurnitureDetails) _then) = _$FurnitureDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, LivingRoomType? livingRoomType, FurnitureCondition? condition, BedroomType? bedroomType, DiningRoomType? diningRoomType, KitchenwareType? kitchenwareType, BathroomType? bathroomType, HomeDecorType? homeDecorType, GardenType? gardenType
});




}
/// @nodoc
class _$FurnitureDetailsCopyWithImpl<$Res>
    implements $FurnitureDetailsCopyWith<$Res> {
  _$FurnitureDetailsCopyWithImpl(this._self, this._then);

  final FurnitureDetails _self;
  final $Res Function(FurnitureDetails) _then;

/// Create a copy of FurnitureDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? livingRoomType = freezed,Object? condition = freezed,Object? bedroomType = freezed,Object? diningRoomType = freezed,Object? kitchenwareType = freezed,Object? bathroomType = freezed,Object? homeDecorType = freezed,Object? gardenType = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,livingRoomType: freezed == livingRoomType ? _self.livingRoomType : livingRoomType // ignore: cast_nullable_to_non_nullable
as LivingRoomType?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as FurnitureCondition?,bedroomType: freezed == bedroomType ? _self.bedroomType : bedroomType // ignore: cast_nullable_to_non_nullable
as BedroomType?,diningRoomType: freezed == diningRoomType ? _self.diningRoomType : diningRoomType // ignore: cast_nullable_to_non_nullable
as DiningRoomType?,kitchenwareType: freezed == kitchenwareType ? _self.kitchenwareType : kitchenwareType // ignore: cast_nullable_to_non_nullable
as KitchenwareType?,bathroomType: freezed == bathroomType ? _self.bathroomType : bathroomType // ignore: cast_nullable_to_non_nullable
as BathroomType?,homeDecorType: freezed == homeDecorType ? _self.homeDecorType : homeDecorType // ignore: cast_nullable_to_non_nullable
as HomeDecorType?,gardenType: freezed == gardenType ? _self.gardenType : gardenType // ignore: cast_nullable_to_non_nullable
as GardenType?,
  ));
}

}


/// Adds pattern-matching-related methods to [FurnitureDetails].
extension FurnitureDetailsPatterns on FurnitureDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FurnitureDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FurnitureDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FurnitureDetails value)  $default,){
final _that = this;
switch (_that) {
case _FurnitureDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FurnitureDetails value)?  $default,){
final _that = this;
switch (_that) {
case _FurnitureDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  LivingRoomType? livingRoomType,  FurnitureCondition? condition,  BedroomType? bedroomType,  DiningRoomType? diningRoomType,  KitchenwareType? kitchenwareType,  BathroomType? bathroomType,  HomeDecorType? homeDecorType,  GardenType? gardenType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FurnitureDetails() when $default != null:
return $default(_that.listingId,_that.livingRoomType,_that.condition,_that.bedroomType,_that.diningRoomType,_that.kitchenwareType,_that.bathroomType,_that.homeDecorType,_that.gardenType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  LivingRoomType? livingRoomType,  FurnitureCondition? condition,  BedroomType? bedroomType,  DiningRoomType? diningRoomType,  KitchenwareType? kitchenwareType,  BathroomType? bathroomType,  HomeDecorType? homeDecorType,  GardenType? gardenType)  $default,) {final _that = this;
switch (_that) {
case _FurnitureDetails():
return $default(_that.listingId,_that.livingRoomType,_that.condition,_that.bedroomType,_that.diningRoomType,_that.kitchenwareType,_that.bathroomType,_that.homeDecorType,_that.gardenType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  LivingRoomType? livingRoomType,  FurnitureCondition? condition,  BedroomType? bedroomType,  DiningRoomType? diningRoomType,  KitchenwareType? kitchenwareType,  BathroomType? bathroomType,  HomeDecorType? homeDecorType,  GardenType? gardenType)?  $default,) {final _that = this;
switch (_that) {
case _FurnitureDetails() when $default != null:
return $default(_that.listingId,_that.livingRoomType,_that.condition,_that.bedroomType,_that.diningRoomType,_that.kitchenwareType,_that.bathroomType,_that.homeDecorType,_that.gardenType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FurnitureDetails implements FurnitureDetails {
  const _FurnitureDetails({this.listingId, this.livingRoomType, this.condition, this.bedroomType, this.diningRoomType, this.kitchenwareType, this.bathroomType, this.homeDecorType, this.gardenType});
  factory _FurnitureDetails.fromJson(Map<String, dynamic> json) => _$FurnitureDetailsFromJson(json);

@override final  String? listingId;
@override final  LivingRoomType? livingRoomType;
@override final  FurnitureCondition? condition;
@override final  BedroomType? bedroomType;
@override final  DiningRoomType? diningRoomType;
@override final  KitchenwareType? kitchenwareType;
@override final  BathroomType? bathroomType;
@override final  HomeDecorType? homeDecorType;
@override final  GardenType? gardenType;

/// Create a copy of FurnitureDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FurnitureDetailsCopyWith<_FurnitureDetails> get copyWith => __$FurnitureDetailsCopyWithImpl<_FurnitureDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FurnitureDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FurnitureDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.livingRoomType, livingRoomType) || other.livingRoomType == livingRoomType)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.bedroomType, bedroomType) || other.bedroomType == bedroomType)&&(identical(other.diningRoomType, diningRoomType) || other.diningRoomType == diningRoomType)&&(identical(other.kitchenwareType, kitchenwareType) || other.kitchenwareType == kitchenwareType)&&(identical(other.bathroomType, bathroomType) || other.bathroomType == bathroomType)&&(identical(other.homeDecorType, homeDecorType) || other.homeDecorType == homeDecorType)&&(identical(other.gardenType, gardenType) || other.gardenType == gardenType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,livingRoomType,condition,bedroomType,diningRoomType,kitchenwareType,bathroomType,homeDecorType,gardenType);

@override
String toString() {
  return 'FurnitureDetails(listingId: $listingId, livingRoomType: $livingRoomType, condition: $condition, bedroomType: $bedroomType, diningRoomType: $diningRoomType, kitchenwareType: $kitchenwareType, bathroomType: $bathroomType, homeDecorType: $homeDecorType, gardenType: $gardenType)';
}


}

/// @nodoc
abstract mixin class _$FurnitureDetailsCopyWith<$Res> implements $FurnitureDetailsCopyWith<$Res> {
  factory _$FurnitureDetailsCopyWith(_FurnitureDetails value, $Res Function(_FurnitureDetails) _then) = __$FurnitureDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, LivingRoomType? livingRoomType, FurnitureCondition? condition, BedroomType? bedroomType, DiningRoomType? diningRoomType, KitchenwareType? kitchenwareType, BathroomType? bathroomType, HomeDecorType? homeDecorType, GardenType? gardenType
});




}
/// @nodoc
class __$FurnitureDetailsCopyWithImpl<$Res>
    implements _$FurnitureDetailsCopyWith<$Res> {
  __$FurnitureDetailsCopyWithImpl(this._self, this._then);

  final _FurnitureDetails _self;
  final $Res Function(_FurnitureDetails) _then;

/// Create a copy of FurnitureDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? livingRoomType = freezed,Object? condition = freezed,Object? bedroomType = freezed,Object? diningRoomType = freezed,Object? kitchenwareType = freezed,Object? bathroomType = freezed,Object? homeDecorType = freezed,Object? gardenType = freezed,}) {
  return _then(_FurnitureDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,livingRoomType: freezed == livingRoomType ? _self.livingRoomType : livingRoomType // ignore: cast_nullable_to_non_nullable
as LivingRoomType?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as FurnitureCondition?,bedroomType: freezed == bedroomType ? _self.bedroomType : bedroomType // ignore: cast_nullable_to_non_nullable
as BedroomType?,diningRoomType: freezed == diningRoomType ? _self.diningRoomType : diningRoomType // ignore: cast_nullable_to_non_nullable
as DiningRoomType?,kitchenwareType: freezed == kitchenwareType ? _self.kitchenwareType : kitchenwareType // ignore: cast_nullable_to_non_nullable
as KitchenwareType?,bathroomType: freezed == bathroomType ? _self.bathroomType : bathroomType // ignore: cast_nullable_to_non_nullable
as BathroomType?,homeDecorType: freezed == homeDecorType ? _self.homeDecorType : homeDecorType // ignore: cast_nullable_to_non_nullable
as HomeDecorType?,gardenType: freezed == gardenType ? _self.gardenType : gardenType // ignore: cast_nullable_to_non_nullable
as GardenType?,
  ));
}


}

// dart format on
