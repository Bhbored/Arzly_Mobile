// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicles_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VehiclesDetails {

 String? get listingId; CarBrand? get carBrand; String? get version; VehicleCondition? get condition; int? get kilometers; int? get year; FuelType? get fuelType; VehicleColor? get vehicleColor; int? get numberOfDoors; TransmissionType? get transmissionType; List<CarFeature>? get carFeatures; MotorcycleType? get motorcycleType; AccessoryType? get accessoryType; VehicleType? get vehicleType; PlateDigits? get numberOfDigits; TruckBrand? get truckBrand; BoatType? get boatType;
/// Create a copy of VehiclesDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehiclesDetailsCopyWith<VehiclesDetails> get copyWith => _$VehiclesDetailsCopyWithImpl<VehiclesDetails>(this as VehiclesDetails, _$identity);

  /// Serializes this VehiclesDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehiclesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.carBrand, carBrand) || other.carBrand == carBrand)&&(identical(other.version, version) || other.version == version)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.kilometers, kilometers) || other.kilometers == kilometers)&&(identical(other.year, year) || other.year == year)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType)&&(identical(other.vehicleColor, vehicleColor) || other.vehicleColor == vehicleColor)&&(identical(other.numberOfDoors, numberOfDoors) || other.numberOfDoors == numberOfDoors)&&(identical(other.transmissionType, transmissionType) || other.transmissionType == transmissionType)&&const DeepCollectionEquality().equals(other.carFeatures, carFeatures)&&(identical(other.motorcycleType, motorcycleType) || other.motorcycleType == motorcycleType)&&(identical(other.accessoryType, accessoryType) || other.accessoryType == accessoryType)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.numberOfDigits, numberOfDigits) || other.numberOfDigits == numberOfDigits)&&(identical(other.truckBrand, truckBrand) || other.truckBrand == truckBrand)&&(identical(other.boatType, boatType) || other.boatType == boatType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,carBrand,version,condition,kilometers,year,fuelType,vehicleColor,numberOfDoors,transmissionType,const DeepCollectionEquality().hash(carFeatures),motorcycleType,accessoryType,vehicleType,numberOfDigits,truckBrand,boatType);

@override
String toString() {
  return 'VehiclesDetails(listingId: $listingId, carBrand: $carBrand, version: $version, condition: $condition, kilometers: $kilometers, year: $year, fuelType: $fuelType, vehicleColor: $vehicleColor, numberOfDoors: $numberOfDoors, transmissionType: $transmissionType, carFeatures: $carFeatures, motorcycleType: $motorcycleType, accessoryType: $accessoryType, vehicleType: $vehicleType, numberOfDigits: $numberOfDigits, truckBrand: $truckBrand, boatType: $boatType)';
}


}

/// @nodoc
abstract mixin class $VehiclesDetailsCopyWith<$Res>  {
  factory $VehiclesDetailsCopyWith(VehiclesDetails value, $Res Function(VehiclesDetails) _then) = _$VehiclesDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, CarBrand? carBrand, String? version, VehicleCondition? condition, int? kilometers, int? year, FuelType? fuelType, VehicleColor? vehicleColor, int? numberOfDoors, TransmissionType? transmissionType, List<CarFeature>? carFeatures, MotorcycleType? motorcycleType, AccessoryType? accessoryType, VehicleType? vehicleType, PlateDigits? numberOfDigits, TruckBrand? truckBrand, BoatType? boatType
});




}
/// @nodoc
class _$VehiclesDetailsCopyWithImpl<$Res>
    implements $VehiclesDetailsCopyWith<$Res> {
  _$VehiclesDetailsCopyWithImpl(this._self, this._then);

  final VehiclesDetails _self;
  final $Res Function(VehiclesDetails) _then;

/// Create a copy of VehiclesDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? carBrand = freezed,Object? version = freezed,Object? condition = freezed,Object? kilometers = freezed,Object? year = freezed,Object? fuelType = freezed,Object? vehicleColor = freezed,Object? numberOfDoors = freezed,Object? transmissionType = freezed,Object? carFeatures = freezed,Object? motorcycleType = freezed,Object? accessoryType = freezed,Object? vehicleType = freezed,Object? numberOfDigits = freezed,Object? truckBrand = freezed,Object? boatType = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,carBrand: freezed == carBrand ? _self.carBrand : carBrand // ignore: cast_nullable_to_non_nullable
as CarBrand?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as VehicleCondition?,kilometers: freezed == kilometers ? _self.kilometers : kilometers // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,fuelType: freezed == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as FuelType?,vehicleColor: freezed == vehicleColor ? _self.vehicleColor : vehicleColor // ignore: cast_nullable_to_non_nullable
as VehicleColor?,numberOfDoors: freezed == numberOfDoors ? _self.numberOfDoors : numberOfDoors // ignore: cast_nullable_to_non_nullable
as int?,transmissionType: freezed == transmissionType ? _self.transmissionType : transmissionType // ignore: cast_nullable_to_non_nullable
as TransmissionType?,carFeatures: freezed == carFeatures ? _self.carFeatures : carFeatures // ignore: cast_nullable_to_non_nullable
as List<CarFeature>?,motorcycleType: freezed == motorcycleType ? _self.motorcycleType : motorcycleType // ignore: cast_nullable_to_non_nullable
as MotorcycleType?,accessoryType: freezed == accessoryType ? _self.accessoryType : accessoryType // ignore: cast_nullable_to_non_nullable
as AccessoryType?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as VehicleType?,numberOfDigits: freezed == numberOfDigits ? _self.numberOfDigits : numberOfDigits // ignore: cast_nullable_to_non_nullable
as PlateDigits?,truckBrand: freezed == truckBrand ? _self.truckBrand : truckBrand // ignore: cast_nullable_to_non_nullable
as TruckBrand?,boatType: freezed == boatType ? _self.boatType : boatType // ignore: cast_nullable_to_non_nullable
as BoatType?,
  ));
}

}


/// Adds pattern-matching-related methods to [VehiclesDetails].
extension VehiclesDetailsPatterns on VehiclesDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VehiclesDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VehiclesDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VehiclesDetails value)  $default,){
final _that = this;
switch (_that) {
case _VehiclesDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VehiclesDetails value)?  $default,){
final _that = this;
switch (_that) {
case _VehiclesDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  CarBrand? carBrand,  String? version,  VehicleCondition? condition,  int? kilometers,  int? year,  FuelType? fuelType,  VehicleColor? vehicleColor,  int? numberOfDoors,  TransmissionType? transmissionType,  List<CarFeature>? carFeatures,  MotorcycleType? motorcycleType,  AccessoryType? accessoryType,  VehicleType? vehicleType,  PlateDigits? numberOfDigits,  TruckBrand? truckBrand,  BoatType? boatType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VehiclesDetails() when $default != null:
return $default(_that.listingId,_that.carBrand,_that.version,_that.condition,_that.kilometers,_that.year,_that.fuelType,_that.vehicleColor,_that.numberOfDoors,_that.transmissionType,_that.carFeatures,_that.motorcycleType,_that.accessoryType,_that.vehicleType,_that.numberOfDigits,_that.truckBrand,_that.boatType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  CarBrand? carBrand,  String? version,  VehicleCondition? condition,  int? kilometers,  int? year,  FuelType? fuelType,  VehicleColor? vehicleColor,  int? numberOfDoors,  TransmissionType? transmissionType,  List<CarFeature>? carFeatures,  MotorcycleType? motorcycleType,  AccessoryType? accessoryType,  VehicleType? vehicleType,  PlateDigits? numberOfDigits,  TruckBrand? truckBrand,  BoatType? boatType)  $default,) {final _that = this;
switch (_that) {
case _VehiclesDetails():
return $default(_that.listingId,_that.carBrand,_that.version,_that.condition,_that.kilometers,_that.year,_that.fuelType,_that.vehicleColor,_that.numberOfDoors,_that.transmissionType,_that.carFeatures,_that.motorcycleType,_that.accessoryType,_that.vehicleType,_that.numberOfDigits,_that.truckBrand,_that.boatType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  CarBrand? carBrand,  String? version,  VehicleCondition? condition,  int? kilometers,  int? year,  FuelType? fuelType,  VehicleColor? vehicleColor,  int? numberOfDoors,  TransmissionType? transmissionType,  List<CarFeature>? carFeatures,  MotorcycleType? motorcycleType,  AccessoryType? accessoryType,  VehicleType? vehicleType,  PlateDigits? numberOfDigits,  TruckBrand? truckBrand,  BoatType? boatType)?  $default,) {final _that = this;
switch (_that) {
case _VehiclesDetails() when $default != null:
return $default(_that.listingId,_that.carBrand,_that.version,_that.condition,_that.kilometers,_that.year,_that.fuelType,_that.vehicleColor,_that.numberOfDoors,_that.transmissionType,_that.carFeatures,_that.motorcycleType,_that.accessoryType,_that.vehicleType,_that.numberOfDigits,_that.truckBrand,_that.boatType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VehiclesDetails implements VehiclesDetails {
  const _VehiclesDetails({this.listingId, this.carBrand, this.version, this.condition, this.kilometers, this.year, this.fuelType, this.vehicleColor, this.numberOfDoors, this.transmissionType, final  List<CarFeature>? carFeatures, this.motorcycleType, this.accessoryType, this.vehicleType, this.numberOfDigits, this.truckBrand, this.boatType}): _carFeatures = carFeatures;
  factory _VehiclesDetails.fromJson(Map<String, dynamic> json) => _$VehiclesDetailsFromJson(json);

@override final  String? listingId;
@override final  CarBrand? carBrand;
@override final  String? version;
@override final  VehicleCondition? condition;
@override final  int? kilometers;
@override final  int? year;
@override final  FuelType? fuelType;
@override final  VehicleColor? vehicleColor;
@override final  int? numberOfDoors;
@override final  TransmissionType? transmissionType;
 final  List<CarFeature>? _carFeatures;
@override List<CarFeature>? get carFeatures {
  final value = _carFeatures;
  if (value == null) return null;
  if (_carFeatures is EqualUnmodifiableListView) return _carFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MotorcycleType? motorcycleType;
@override final  AccessoryType? accessoryType;
@override final  VehicleType? vehicleType;
@override final  PlateDigits? numberOfDigits;
@override final  TruckBrand? truckBrand;
@override final  BoatType? boatType;

/// Create a copy of VehiclesDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VehiclesDetailsCopyWith<_VehiclesDetails> get copyWith => __$VehiclesDetailsCopyWithImpl<_VehiclesDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VehiclesDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VehiclesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.carBrand, carBrand) || other.carBrand == carBrand)&&(identical(other.version, version) || other.version == version)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.kilometers, kilometers) || other.kilometers == kilometers)&&(identical(other.year, year) || other.year == year)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType)&&(identical(other.vehicleColor, vehicleColor) || other.vehicleColor == vehicleColor)&&(identical(other.numberOfDoors, numberOfDoors) || other.numberOfDoors == numberOfDoors)&&(identical(other.transmissionType, transmissionType) || other.transmissionType == transmissionType)&&const DeepCollectionEquality().equals(other._carFeatures, _carFeatures)&&(identical(other.motorcycleType, motorcycleType) || other.motorcycleType == motorcycleType)&&(identical(other.accessoryType, accessoryType) || other.accessoryType == accessoryType)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.numberOfDigits, numberOfDigits) || other.numberOfDigits == numberOfDigits)&&(identical(other.truckBrand, truckBrand) || other.truckBrand == truckBrand)&&(identical(other.boatType, boatType) || other.boatType == boatType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,carBrand,version,condition,kilometers,year,fuelType,vehicleColor,numberOfDoors,transmissionType,const DeepCollectionEquality().hash(_carFeatures),motorcycleType,accessoryType,vehicleType,numberOfDigits,truckBrand,boatType);

@override
String toString() {
  return 'VehiclesDetails(listingId: $listingId, carBrand: $carBrand, version: $version, condition: $condition, kilometers: $kilometers, year: $year, fuelType: $fuelType, vehicleColor: $vehicleColor, numberOfDoors: $numberOfDoors, transmissionType: $transmissionType, carFeatures: $carFeatures, motorcycleType: $motorcycleType, accessoryType: $accessoryType, vehicleType: $vehicleType, numberOfDigits: $numberOfDigits, truckBrand: $truckBrand, boatType: $boatType)';
}


}

/// @nodoc
abstract mixin class _$VehiclesDetailsCopyWith<$Res> implements $VehiclesDetailsCopyWith<$Res> {
  factory _$VehiclesDetailsCopyWith(_VehiclesDetails value, $Res Function(_VehiclesDetails) _then) = __$VehiclesDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, CarBrand? carBrand, String? version, VehicleCondition? condition, int? kilometers, int? year, FuelType? fuelType, VehicleColor? vehicleColor, int? numberOfDoors, TransmissionType? transmissionType, List<CarFeature>? carFeatures, MotorcycleType? motorcycleType, AccessoryType? accessoryType, VehicleType? vehicleType, PlateDigits? numberOfDigits, TruckBrand? truckBrand, BoatType? boatType
});




}
/// @nodoc
class __$VehiclesDetailsCopyWithImpl<$Res>
    implements _$VehiclesDetailsCopyWith<$Res> {
  __$VehiclesDetailsCopyWithImpl(this._self, this._then);

  final _VehiclesDetails _self;
  final $Res Function(_VehiclesDetails) _then;

/// Create a copy of VehiclesDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? carBrand = freezed,Object? version = freezed,Object? condition = freezed,Object? kilometers = freezed,Object? year = freezed,Object? fuelType = freezed,Object? vehicleColor = freezed,Object? numberOfDoors = freezed,Object? transmissionType = freezed,Object? carFeatures = freezed,Object? motorcycleType = freezed,Object? accessoryType = freezed,Object? vehicleType = freezed,Object? numberOfDigits = freezed,Object? truckBrand = freezed,Object? boatType = freezed,}) {
  return _then(_VehiclesDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,carBrand: freezed == carBrand ? _self.carBrand : carBrand // ignore: cast_nullable_to_non_nullable
as CarBrand?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as VehicleCondition?,kilometers: freezed == kilometers ? _self.kilometers : kilometers // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,fuelType: freezed == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as FuelType?,vehicleColor: freezed == vehicleColor ? _self.vehicleColor : vehicleColor // ignore: cast_nullable_to_non_nullable
as VehicleColor?,numberOfDoors: freezed == numberOfDoors ? _self.numberOfDoors : numberOfDoors // ignore: cast_nullable_to_non_nullable
as int?,transmissionType: freezed == transmissionType ? _self.transmissionType : transmissionType // ignore: cast_nullable_to_non_nullable
as TransmissionType?,carFeatures: freezed == carFeatures ? _self._carFeatures : carFeatures // ignore: cast_nullable_to_non_nullable
as List<CarFeature>?,motorcycleType: freezed == motorcycleType ? _self.motorcycleType : motorcycleType // ignore: cast_nullable_to_non_nullable
as MotorcycleType?,accessoryType: freezed == accessoryType ? _self.accessoryType : accessoryType // ignore: cast_nullable_to_non_nullable
as AccessoryType?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as VehicleType?,numberOfDigits: freezed == numberOfDigits ? _self.numberOfDigits : numberOfDigits // ignore: cast_nullable_to_non_nullable
as PlateDigits?,truckBrand: freezed == truckBrand ? _self.truckBrand : truckBrand // ignore: cast_nullable_to_non_nullable
as TruckBrand?,boatType: freezed == boatType ? _self.boatType : boatType // ignore: cast_nullable_to_non_nullable
as BoatType?,
  ));
}


}

// dart format on
