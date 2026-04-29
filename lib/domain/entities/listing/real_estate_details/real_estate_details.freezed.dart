// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_estate_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RealEstateDetails {

 String? get listingId; PropertyListingType? get listingType; String? get referenceId; PropertyType? get propertyType; OwnershipType? get ownership; Bedrooms? get bedrooms; int? get bathrooms; double? get size; FurnishedStatus? get furnished; PropertyCondition? get condition; FloorLevel? get floor; List<ApartmentFeature>? get features; PropertyAge? get propertyAge; CommercialType? get commercialType; bool? get equipped; List<CommercialFeature>? get commercialFeatures; LandType? get landType; ChaletType? get chaletType; List<ChaletFeature>? get chaletFeatures; bool? get roomFurnished; List<RoomFeature>? get roomFeatures;
/// Create a copy of RealEstateDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RealEstateDetailsCopyWith<RealEstateDetails> get copyWith => _$RealEstateDetailsCopyWithImpl<RealEstateDetails>(this as RealEstateDetails, _$identity);

  /// Serializes this RealEstateDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RealEstateDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.propertyType, propertyType) || other.propertyType == propertyType)&&(identical(other.ownership, ownership) || other.ownership == ownership)&&(identical(other.bedrooms, bedrooms) || other.bedrooms == bedrooms)&&(identical(other.bathrooms, bathrooms) || other.bathrooms == bathrooms)&&(identical(other.size, size) || other.size == size)&&(identical(other.furnished, furnished) || other.furnished == furnished)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.floor, floor) || other.floor == floor)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.propertyAge, propertyAge) || other.propertyAge == propertyAge)&&(identical(other.commercialType, commercialType) || other.commercialType == commercialType)&&(identical(other.equipped, equipped) || other.equipped == equipped)&&const DeepCollectionEquality().equals(other.commercialFeatures, commercialFeatures)&&(identical(other.landType, landType) || other.landType == landType)&&(identical(other.chaletType, chaletType) || other.chaletType == chaletType)&&const DeepCollectionEquality().equals(other.chaletFeatures, chaletFeatures)&&(identical(other.roomFurnished, roomFurnished) || other.roomFurnished == roomFurnished)&&const DeepCollectionEquality().equals(other.roomFeatures, roomFeatures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,listingId,listingType,referenceId,propertyType,ownership,bedrooms,bathrooms,size,furnished,condition,floor,const DeepCollectionEquality().hash(features),propertyAge,commercialType,equipped,const DeepCollectionEquality().hash(commercialFeatures),landType,chaletType,const DeepCollectionEquality().hash(chaletFeatures),roomFurnished,const DeepCollectionEquality().hash(roomFeatures)]);

@override
String toString() {
  return 'RealEstateDetails(listingId: $listingId, listingType: $listingType, referenceId: $referenceId, propertyType: $propertyType, ownership: $ownership, bedrooms: $bedrooms, bathrooms: $bathrooms, size: $size, furnished: $furnished, condition: $condition, floor: $floor, features: $features, propertyAge: $propertyAge, commercialType: $commercialType, equipped: $equipped, commercialFeatures: $commercialFeatures, landType: $landType, chaletType: $chaletType, chaletFeatures: $chaletFeatures, roomFurnished: $roomFurnished, roomFeatures: $roomFeatures)';
}


}

/// @nodoc
abstract mixin class $RealEstateDetailsCopyWith<$Res>  {
  factory $RealEstateDetailsCopyWith(RealEstateDetails value, $Res Function(RealEstateDetails) _then) = _$RealEstateDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, PropertyListingType? listingType, String? referenceId, PropertyType? propertyType, OwnershipType? ownership, Bedrooms? bedrooms, int? bathrooms, double? size, FurnishedStatus? furnished, PropertyCondition? condition, FloorLevel? floor, List<ApartmentFeature>? features, PropertyAge? propertyAge, CommercialType? commercialType, bool? equipped, List<CommercialFeature>? commercialFeatures, LandType? landType, ChaletType? chaletType, List<ChaletFeature>? chaletFeatures, bool? roomFurnished, List<RoomFeature>? roomFeatures
});




}
/// @nodoc
class _$RealEstateDetailsCopyWithImpl<$Res>
    implements $RealEstateDetailsCopyWith<$Res> {
  _$RealEstateDetailsCopyWithImpl(this._self, this._then);

  final RealEstateDetails _self;
  final $Res Function(RealEstateDetails) _then;

/// Create a copy of RealEstateDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? listingType = freezed,Object? referenceId = freezed,Object? propertyType = freezed,Object? ownership = freezed,Object? bedrooms = freezed,Object? bathrooms = freezed,Object? size = freezed,Object? furnished = freezed,Object? condition = freezed,Object? floor = freezed,Object? features = freezed,Object? propertyAge = freezed,Object? commercialType = freezed,Object? equipped = freezed,Object? commercialFeatures = freezed,Object? landType = freezed,Object? chaletType = freezed,Object? chaletFeatures = freezed,Object? roomFurnished = freezed,Object? roomFeatures = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,listingType: freezed == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as PropertyListingType?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,propertyType: freezed == propertyType ? _self.propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as PropertyType?,ownership: freezed == ownership ? _self.ownership : ownership // ignore: cast_nullable_to_non_nullable
as OwnershipType?,bedrooms: freezed == bedrooms ? _self.bedrooms : bedrooms // ignore: cast_nullable_to_non_nullable
as Bedrooms?,bathrooms: freezed == bathrooms ? _self.bathrooms : bathrooms // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double?,furnished: freezed == furnished ? _self.furnished : furnished // ignore: cast_nullable_to_non_nullable
as FurnishedStatus?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as PropertyCondition?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as FloorLevel?,features: freezed == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<ApartmentFeature>?,propertyAge: freezed == propertyAge ? _self.propertyAge : propertyAge // ignore: cast_nullable_to_non_nullable
as PropertyAge?,commercialType: freezed == commercialType ? _self.commercialType : commercialType // ignore: cast_nullable_to_non_nullable
as CommercialType?,equipped: freezed == equipped ? _self.equipped : equipped // ignore: cast_nullable_to_non_nullable
as bool?,commercialFeatures: freezed == commercialFeatures ? _self.commercialFeatures : commercialFeatures // ignore: cast_nullable_to_non_nullable
as List<CommercialFeature>?,landType: freezed == landType ? _self.landType : landType // ignore: cast_nullable_to_non_nullable
as LandType?,chaletType: freezed == chaletType ? _self.chaletType : chaletType // ignore: cast_nullable_to_non_nullable
as ChaletType?,chaletFeatures: freezed == chaletFeatures ? _self.chaletFeatures : chaletFeatures // ignore: cast_nullable_to_non_nullable
as List<ChaletFeature>?,roomFurnished: freezed == roomFurnished ? _self.roomFurnished : roomFurnished // ignore: cast_nullable_to_non_nullable
as bool?,roomFeatures: freezed == roomFeatures ? _self.roomFeatures : roomFeatures // ignore: cast_nullable_to_non_nullable
as List<RoomFeature>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RealEstateDetails].
extension RealEstateDetailsPatterns on RealEstateDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RealEstateDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RealEstateDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RealEstateDetails value)  $default,){
final _that = this;
switch (_that) {
case _RealEstateDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RealEstateDetails value)?  $default,){
final _that = this;
switch (_that) {
case _RealEstateDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  PropertyListingType? listingType,  String? referenceId,  PropertyType? propertyType,  OwnershipType? ownership,  Bedrooms? bedrooms,  int? bathrooms,  double? size,  FurnishedStatus? furnished,  PropertyCondition? condition,  FloorLevel? floor,  List<ApartmentFeature>? features,  PropertyAge? propertyAge,  CommercialType? commercialType,  bool? equipped,  List<CommercialFeature>? commercialFeatures,  LandType? landType,  ChaletType? chaletType,  List<ChaletFeature>? chaletFeatures,  bool? roomFurnished,  List<RoomFeature>? roomFeatures)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RealEstateDetails() when $default != null:
return $default(_that.listingId,_that.listingType,_that.referenceId,_that.propertyType,_that.ownership,_that.bedrooms,_that.bathrooms,_that.size,_that.furnished,_that.condition,_that.floor,_that.features,_that.propertyAge,_that.commercialType,_that.equipped,_that.commercialFeatures,_that.landType,_that.chaletType,_that.chaletFeatures,_that.roomFurnished,_that.roomFeatures);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  PropertyListingType? listingType,  String? referenceId,  PropertyType? propertyType,  OwnershipType? ownership,  Bedrooms? bedrooms,  int? bathrooms,  double? size,  FurnishedStatus? furnished,  PropertyCondition? condition,  FloorLevel? floor,  List<ApartmentFeature>? features,  PropertyAge? propertyAge,  CommercialType? commercialType,  bool? equipped,  List<CommercialFeature>? commercialFeatures,  LandType? landType,  ChaletType? chaletType,  List<ChaletFeature>? chaletFeatures,  bool? roomFurnished,  List<RoomFeature>? roomFeatures)  $default,) {final _that = this;
switch (_that) {
case _RealEstateDetails():
return $default(_that.listingId,_that.listingType,_that.referenceId,_that.propertyType,_that.ownership,_that.bedrooms,_that.bathrooms,_that.size,_that.furnished,_that.condition,_that.floor,_that.features,_that.propertyAge,_that.commercialType,_that.equipped,_that.commercialFeatures,_that.landType,_that.chaletType,_that.chaletFeatures,_that.roomFurnished,_that.roomFeatures);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  PropertyListingType? listingType,  String? referenceId,  PropertyType? propertyType,  OwnershipType? ownership,  Bedrooms? bedrooms,  int? bathrooms,  double? size,  FurnishedStatus? furnished,  PropertyCondition? condition,  FloorLevel? floor,  List<ApartmentFeature>? features,  PropertyAge? propertyAge,  CommercialType? commercialType,  bool? equipped,  List<CommercialFeature>? commercialFeatures,  LandType? landType,  ChaletType? chaletType,  List<ChaletFeature>? chaletFeatures,  bool? roomFurnished,  List<RoomFeature>? roomFeatures)?  $default,) {final _that = this;
switch (_that) {
case _RealEstateDetails() when $default != null:
return $default(_that.listingId,_that.listingType,_that.referenceId,_that.propertyType,_that.ownership,_that.bedrooms,_that.bathrooms,_that.size,_that.furnished,_that.condition,_that.floor,_that.features,_that.propertyAge,_that.commercialType,_that.equipped,_that.commercialFeatures,_that.landType,_that.chaletType,_that.chaletFeatures,_that.roomFurnished,_that.roomFeatures);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RealEstateDetails implements RealEstateDetails {
  const _RealEstateDetails({this.listingId, this.listingType, this.referenceId, this.propertyType, this.ownership, this.bedrooms, this.bathrooms, this.size, this.furnished, this.condition, this.floor, final  List<ApartmentFeature>? features, this.propertyAge, this.commercialType, this.equipped, final  List<CommercialFeature>? commercialFeatures, this.landType, this.chaletType, final  List<ChaletFeature>? chaletFeatures, this.roomFurnished, final  List<RoomFeature>? roomFeatures}): _features = features,_commercialFeatures = commercialFeatures,_chaletFeatures = chaletFeatures,_roomFeatures = roomFeatures;
  factory _RealEstateDetails.fromJson(Map<String, dynamic> json) => _$RealEstateDetailsFromJson(json);

@override final  String? listingId;
@override final  PropertyListingType? listingType;
@override final  String? referenceId;
@override final  PropertyType? propertyType;
@override final  OwnershipType? ownership;
@override final  Bedrooms? bedrooms;
@override final  int? bathrooms;
@override final  double? size;
@override final  FurnishedStatus? furnished;
@override final  PropertyCondition? condition;
@override final  FloorLevel? floor;
 final  List<ApartmentFeature>? _features;
@override List<ApartmentFeature>? get features {
  final value = _features;
  if (value == null) return null;
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PropertyAge? propertyAge;
@override final  CommercialType? commercialType;
@override final  bool? equipped;
 final  List<CommercialFeature>? _commercialFeatures;
@override List<CommercialFeature>? get commercialFeatures {
  final value = _commercialFeatures;
  if (value == null) return null;
  if (_commercialFeatures is EqualUnmodifiableListView) return _commercialFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  LandType? landType;
@override final  ChaletType? chaletType;
 final  List<ChaletFeature>? _chaletFeatures;
@override List<ChaletFeature>? get chaletFeatures {
  final value = _chaletFeatures;
  if (value == null) return null;
  if (_chaletFeatures is EqualUnmodifiableListView) return _chaletFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? roomFurnished;
 final  List<RoomFeature>? _roomFeatures;
@override List<RoomFeature>? get roomFeatures {
  final value = _roomFeatures;
  if (value == null) return null;
  if (_roomFeatures is EqualUnmodifiableListView) return _roomFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RealEstateDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RealEstateDetailsCopyWith<_RealEstateDetails> get copyWith => __$RealEstateDetailsCopyWithImpl<_RealEstateDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RealEstateDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RealEstateDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.propertyType, propertyType) || other.propertyType == propertyType)&&(identical(other.ownership, ownership) || other.ownership == ownership)&&(identical(other.bedrooms, bedrooms) || other.bedrooms == bedrooms)&&(identical(other.bathrooms, bathrooms) || other.bathrooms == bathrooms)&&(identical(other.size, size) || other.size == size)&&(identical(other.furnished, furnished) || other.furnished == furnished)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.floor, floor) || other.floor == floor)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.propertyAge, propertyAge) || other.propertyAge == propertyAge)&&(identical(other.commercialType, commercialType) || other.commercialType == commercialType)&&(identical(other.equipped, equipped) || other.equipped == equipped)&&const DeepCollectionEquality().equals(other._commercialFeatures, _commercialFeatures)&&(identical(other.landType, landType) || other.landType == landType)&&(identical(other.chaletType, chaletType) || other.chaletType == chaletType)&&const DeepCollectionEquality().equals(other._chaletFeatures, _chaletFeatures)&&(identical(other.roomFurnished, roomFurnished) || other.roomFurnished == roomFurnished)&&const DeepCollectionEquality().equals(other._roomFeatures, _roomFeatures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,listingId,listingType,referenceId,propertyType,ownership,bedrooms,bathrooms,size,furnished,condition,floor,const DeepCollectionEquality().hash(_features),propertyAge,commercialType,equipped,const DeepCollectionEquality().hash(_commercialFeatures),landType,chaletType,const DeepCollectionEquality().hash(_chaletFeatures),roomFurnished,const DeepCollectionEquality().hash(_roomFeatures)]);

@override
String toString() {
  return 'RealEstateDetails(listingId: $listingId, listingType: $listingType, referenceId: $referenceId, propertyType: $propertyType, ownership: $ownership, bedrooms: $bedrooms, bathrooms: $bathrooms, size: $size, furnished: $furnished, condition: $condition, floor: $floor, features: $features, propertyAge: $propertyAge, commercialType: $commercialType, equipped: $equipped, commercialFeatures: $commercialFeatures, landType: $landType, chaletType: $chaletType, chaletFeatures: $chaletFeatures, roomFurnished: $roomFurnished, roomFeatures: $roomFeatures)';
}


}

/// @nodoc
abstract mixin class _$RealEstateDetailsCopyWith<$Res> implements $RealEstateDetailsCopyWith<$Res> {
  factory _$RealEstateDetailsCopyWith(_RealEstateDetails value, $Res Function(_RealEstateDetails) _then) = __$RealEstateDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, PropertyListingType? listingType, String? referenceId, PropertyType? propertyType, OwnershipType? ownership, Bedrooms? bedrooms, int? bathrooms, double? size, FurnishedStatus? furnished, PropertyCondition? condition, FloorLevel? floor, List<ApartmentFeature>? features, PropertyAge? propertyAge, CommercialType? commercialType, bool? equipped, List<CommercialFeature>? commercialFeatures, LandType? landType, ChaletType? chaletType, List<ChaletFeature>? chaletFeatures, bool? roomFurnished, List<RoomFeature>? roomFeatures
});




}
/// @nodoc
class __$RealEstateDetailsCopyWithImpl<$Res>
    implements _$RealEstateDetailsCopyWith<$Res> {
  __$RealEstateDetailsCopyWithImpl(this._self, this._then);

  final _RealEstateDetails _self;
  final $Res Function(_RealEstateDetails) _then;

/// Create a copy of RealEstateDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? listingType = freezed,Object? referenceId = freezed,Object? propertyType = freezed,Object? ownership = freezed,Object? bedrooms = freezed,Object? bathrooms = freezed,Object? size = freezed,Object? furnished = freezed,Object? condition = freezed,Object? floor = freezed,Object? features = freezed,Object? propertyAge = freezed,Object? commercialType = freezed,Object? equipped = freezed,Object? commercialFeatures = freezed,Object? landType = freezed,Object? chaletType = freezed,Object? chaletFeatures = freezed,Object? roomFurnished = freezed,Object? roomFeatures = freezed,}) {
  return _then(_RealEstateDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,listingType: freezed == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as PropertyListingType?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,propertyType: freezed == propertyType ? _self.propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as PropertyType?,ownership: freezed == ownership ? _self.ownership : ownership // ignore: cast_nullable_to_non_nullable
as OwnershipType?,bedrooms: freezed == bedrooms ? _self.bedrooms : bedrooms // ignore: cast_nullable_to_non_nullable
as Bedrooms?,bathrooms: freezed == bathrooms ? _self.bathrooms : bathrooms // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as double?,furnished: freezed == furnished ? _self.furnished : furnished // ignore: cast_nullable_to_non_nullable
as FurnishedStatus?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as PropertyCondition?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as FloorLevel?,features: freezed == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<ApartmentFeature>?,propertyAge: freezed == propertyAge ? _self.propertyAge : propertyAge // ignore: cast_nullable_to_non_nullable
as PropertyAge?,commercialType: freezed == commercialType ? _self.commercialType : commercialType // ignore: cast_nullable_to_non_nullable
as CommercialType?,equipped: freezed == equipped ? _self.equipped : equipped // ignore: cast_nullable_to_non_nullable
as bool?,commercialFeatures: freezed == commercialFeatures ? _self._commercialFeatures : commercialFeatures // ignore: cast_nullable_to_non_nullable
as List<CommercialFeature>?,landType: freezed == landType ? _self.landType : landType // ignore: cast_nullable_to_non_nullable
as LandType?,chaletType: freezed == chaletType ? _self.chaletType : chaletType // ignore: cast_nullable_to_non_nullable
as ChaletType?,chaletFeatures: freezed == chaletFeatures ? _self._chaletFeatures : chaletFeatures // ignore: cast_nullable_to_non_nullable
as List<ChaletFeature>?,roomFurnished: freezed == roomFurnished ? _self.roomFurnished : roomFurnished // ignore: cast_nullable_to_non_nullable
as bool?,roomFeatures: freezed == roomFeatures ? _self._roomFeatures : roomFeatures // ignore: cast_nullable_to_non_nullable
as List<RoomFeature>?,
  ));
}


}

// dart format on
