// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'baby_child_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BabyChildDetails {

 String? get listingId; KidsAgeRange? get ageRange; BabyChildCondition? get condition; StrollerSeatType? get strollerSeatType; KidGender? get gender; CribFurnitureType? get cribFurnitureType; FeedingType? get feedingType;
/// Create a copy of BabyChildDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BabyChildDetailsCopyWith<BabyChildDetails> get copyWith => _$BabyChildDetailsCopyWithImpl<BabyChildDetails>(this as BabyChildDetails, _$identity);

  /// Serializes this BabyChildDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BabyChildDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.strollerSeatType, strollerSeatType) || other.strollerSeatType == strollerSeatType)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.cribFurnitureType, cribFurnitureType) || other.cribFurnitureType == cribFurnitureType)&&(identical(other.feedingType, feedingType) || other.feedingType == feedingType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,ageRange,condition,strollerSeatType,gender,cribFurnitureType,feedingType);

@override
String toString() {
  return 'BabyChildDetails(listingId: $listingId, ageRange: $ageRange, condition: $condition, strollerSeatType: $strollerSeatType, gender: $gender, cribFurnitureType: $cribFurnitureType, feedingType: $feedingType)';
}


}

/// @nodoc
abstract mixin class $BabyChildDetailsCopyWith<$Res>  {
  factory $BabyChildDetailsCopyWith(BabyChildDetails value, $Res Function(BabyChildDetails) _then) = _$BabyChildDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, KidsAgeRange? ageRange, BabyChildCondition? condition, StrollerSeatType? strollerSeatType, KidGender? gender, CribFurnitureType? cribFurnitureType, FeedingType? feedingType
});




}
/// @nodoc
class _$BabyChildDetailsCopyWithImpl<$Res>
    implements $BabyChildDetailsCopyWith<$Res> {
  _$BabyChildDetailsCopyWithImpl(this._self, this._then);

  final BabyChildDetails _self;
  final $Res Function(BabyChildDetails) _then;

/// Create a copy of BabyChildDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? ageRange = freezed,Object? condition = freezed,Object? strollerSeatType = freezed,Object? gender = freezed,Object? cribFurnitureType = freezed,Object? feedingType = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,ageRange: freezed == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as KidsAgeRange?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as BabyChildCondition?,strollerSeatType: freezed == strollerSeatType ? _self.strollerSeatType : strollerSeatType // ignore: cast_nullable_to_non_nullable
as StrollerSeatType?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as KidGender?,cribFurnitureType: freezed == cribFurnitureType ? _self.cribFurnitureType : cribFurnitureType // ignore: cast_nullable_to_non_nullable
as CribFurnitureType?,feedingType: freezed == feedingType ? _self.feedingType : feedingType // ignore: cast_nullable_to_non_nullable
as FeedingType?,
  ));
}

}


/// Adds pattern-matching-related methods to [BabyChildDetails].
extension BabyChildDetailsPatterns on BabyChildDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BabyChildDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BabyChildDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BabyChildDetails value)  $default,){
final _that = this;
switch (_that) {
case _BabyChildDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BabyChildDetails value)?  $default,){
final _that = this;
switch (_that) {
case _BabyChildDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  KidsAgeRange? ageRange,  BabyChildCondition? condition,  StrollerSeatType? strollerSeatType,  KidGender? gender,  CribFurnitureType? cribFurnitureType,  FeedingType? feedingType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BabyChildDetails() when $default != null:
return $default(_that.listingId,_that.ageRange,_that.condition,_that.strollerSeatType,_that.gender,_that.cribFurnitureType,_that.feedingType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  KidsAgeRange? ageRange,  BabyChildCondition? condition,  StrollerSeatType? strollerSeatType,  KidGender? gender,  CribFurnitureType? cribFurnitureType,  FeedingType? feedingType)  $default,) {final _that = this;
switch (_that) {
case _BabyChildDetails():
return $default(_that.listingId,_that.ageRange,_that.condition,_that.strollerSeatType,_that.gender,_that.cribFurnitureType,_that.feedingType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  KidsAgeRange? ageRange,  BabyChildCondition? condition,  StrollerSeatType? strollerSeatType,  KidGender? gender,  CribFurnitureType? cribFurnitureType,  FeedingType? feedingType)?  $default,) {final _that = this;
switch (_that) {
case _BabyChildDetails() when $default != null:
return $default(_that.listingId,_that.ageRange,_that.condition,_that.strollerSeatType,_that.gender,_that.cribFurnitureType,_that.feedingType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BabyChildDetails implements BabyChildDetails {
  const _BabyChildDetails({this.listingId, this.ageRange, this.condition, this.strollerSeatType, this.gender, this.cribFurnitureType, this.feedingType});
  factory _BabyChildDetails.fromJson(Map<String, dynamic> json) => _$BabyChildDetailsFromJson(json);

@override final  String? listingId;
@override final  KidsAgeRange? ageRange;
@override final  BabyChildCondition? condition;
@override final  StrollerSeatType? strollerSeatType;
@override final  KidGender? gender;
@override final  CribFurnitureType? cribFurnitureType;
@override final  FeedingType? feedingType;

/// Create a copy of BabyChildDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BabyChildDetailsCopyWith<_BabyChildDetails> get copyWith => __$BabyChildDetailsCopyWithImpl<_BabyChildDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BabyChildDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BabyChildDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.strollerSeatType, strollerSeatType) || other.strollerSeatType == strollerSeatType)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.cribFurnitureType, cribFurnitureType) || other.cribFurnitureType == cribFurnitureType)&&(identical(other.feedingType, feedingType) || other.feedingType == feedingType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,ageRange,condition,strollerSeatType,gender,cribFurnitureType,feedingType);

@override
String toString() {
  return 'BabyChildDetails(listingId: $listingId, ageRange: $ageRange, condition: $condition, strollerSeatType: $strollerSeatType, gender: $gender, cribFurnitureType: $cribFurnitureType, feedingType: $feedingType)';
}


}

/// @nodoc
abstract mixin class _$BabyChildDetailsCopyWith<$Res> implements $BabyChildDetailsCopyWith<$Res> {
  factory _$BabyChildDetailsCopyWith(_BabyChildDetails value, $Res Function(_BabyChildDetails) _then) = __$BabyChildDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, KidsAgeRange? ageRange, BabyChildCondition? condition, StrollerSeatType? strollerSeatType, KidGender? gender, CribFurnitureType? cribFurnitureType, FeedingType? feedingType
});




}
/// @nodoc
class __$BabyChildDetailsCopyWithImpl<$Res>
    implements _$BabyChildDetailsCopyWith<$Res> {
  __$BabyChildDetailsCopyWithImpl(this._self, this._then);

  final _BabyChildDetails _self;
  final $Res Function(_BabyChildDetails) _then;

/// Create a copy of BabyChildDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? ageRange = freezed,Object? condition = freezed,Object? strollerSeatType = freezed,Object? gender = freezed,Object? cribFurnitureType = freezed,Object? feedingType = freezed,}) {
  return _then(_BabyChildDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,ageRange: freezed == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as KidsAgeRange?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as BabyChildCondition?,strollerSeatType: freezed == strollerSeatType ? _self.strollerSeatType : strollerSeatType // ignore: cast_nullable_to_non_nullable
as StrollerSeatType?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as KidGender?,cribFurnitureType: freezed == cribFurnitureType ? _self.cribFurnitureType : cribFurnitureType // ignore: cast_nullable_to_non_nullable
as CribFurnitureType?,feedingType: freezed == feedingType ? _self.feedingType : feedingType // ignore: cast_nullable_to_non_nullable
as FeedingType?,
  ));
}


}

// dart format on
