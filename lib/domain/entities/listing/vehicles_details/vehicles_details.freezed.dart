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

@JsonKey(name: 'MotorcycleBrand') String? get motorcycleBrand;@JsonKey(includeFromJson: false, includeToJson: false) String? get motorcycleBrandLogoUrl;@JsonKey(name: 'MotorcycleModel') String? get motorcycleModel;@JsonKey(name: 'MotorcycleFuelType') MotorcycleFuelType? get motorcycleFuelType;@JsonKey(name: 'MotorcycleCC') MotorcycleCC? get motorcycleCC;@JsonKey(name: 'CarBrand') String? get carBrand;@JsonKey(includeFromJson: false, includeToJson: false) String? get carBrandLogoUrl;@JsonKey(name: 'CarModel') String? get carModel;@JsonKey(name: 'Version') String? get version;@JsonKey(name: 'CarType') CarType? get carType;@JsonKey(name: 'NumberOfSeats') int? get numberOfSeats;@JsonKey(name: 'Condition') VehicleCondition? get condition;@JsonKey(name: 'HorsePower') int? get horsepower;@JsonKey(name: 'FuelConsumptionLPer100Km') double? get fuelConsumption;@JsonKey(name: 'Kilometers') int? get kilometers;@JsonKey(name: 'Year') int? get year;@JsonKey(name: 'NumberOfOwners') int? get numberOfOwners;@JsonKey(name: 'FuelType') FuelType? get fuelType;@JsonKey(name: 'VehicleInterior') VehicleInterior? get vehicleInterior;@JsonKey(name: 'VehicleColor') VehicleColor? get vehicleColor;@JsonKey(name: 'NumberOfDoors') int? get numberOfDoors;@JsonKey(name: 'TransmissionType') TransmissionType? get transmissionType;@JsonKey(name: 'CarFeatures') List<CarFeature>? get carFeatures;@JsonKey(name: 'AirConditioning') AirConditioning? get airConditioning;@JsonKey(name: 'MotorcycleType') MotorcycleType? get motorcycleType;@JsonKey(name: 'AccessoryType') AccessoryType? get accessoryType;@JsonKey(name: 'NumberOfDigits') PlateDigits? get numberOfDigits;@JsonKey(name: 'TruckBrand') TruckBrand? get truckBrand;@JsonKey(name: 'BoatType') BoatType? get boatType;@JsonKey(name: 'PartType') PartType? get partType;@JsonKey(name: 'VehicleType') VehicleType? get vehicleType;
/// Create a copy of VehiclesDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehiclesDetailsCopyWith<VehiclesDetails> get copyWith => _$VehiclesDetailsCopyWithImpl<VehiclesDetails>(this as VehiclesDetails, _$identity);

  /// Serializes this VehiclesDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehiclesDetails&&(identical(other.motorcycleBrand, motorcycleBrand) || other.motorcycleBrand == motorcycleBrand)&&(identical(other.motorcycleBrandLogoUrl, motorcycleBrandLogoUrl) || other.motorcycleBrandLogoUrl == motorcycleBrandLogoUrl)&&(identical(other.motorcycleModel, motorcycleModel) || other.motorcycleModel == motorcycleModel)&&(identical(other.motorcycleFuelType, motorcycleFuelType) || other.motorcycleFuelType == motorcycleFuelType)&&(identical(other.motorcycleCC, motorcycleCC) || other.motorcycleCC == motorcycleCC)&&(identical(other.carBrand, carBrand) || other.carBrand == carBrand)&&(identical(other.carBrandLogoUrl, carBrandLogoUrl) || other.carBrandLogoUrl == carBrandLogoUrl)&&(identical(other.carModel, carModel) || other.carModel == carModel)&&(identical(other.version, version) || other.version == version)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.numberOfSeats, numberOfSeats) || other.numberOfSeats == numberOfSeats)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.horsepower, horsepower) || other.horsepower == horsepower)&&(identical(other.fuelConsumption, fuelConsumption) || other.fuelConsumption == fuelConsumption)&&(identical(other.kilometers, kilometers) || other.kilometers == kilometers)&&(identical(other.year, year) || other.year == year)&&(identical(other.numberOfOwners, numberOfOwners) || other.numberOfOwners == numberOfOwners)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType)&&(identical(other.vehicleInterior, vehicleInterior) || other.vehicleInterior == vehicleInterior)&&(identical(other.vehicleColor, vehicleColor) || other.vehicleColor == vehicleColor)&&(identical(other.numberOfDoors, numberOfDoors) || other.numberOfDoors == numberOfDoors)&&(identical(other.transmissionType, transmissionType) || other.transmissionType == transmissionType)&&const DeepCollectionEquality().equals(other.carFeatures, carFeatures)&&(identical(other.airConditioning, airConditioning) || other.airConditioning == airConditioning)&&(identical(other.motorcycleType, motorcycleType) || other.motorcycleType == motorcycleType)&&(identical(other.accessoryType, accessoryType) || other.accessoryType == accessoryType)&&(identical(other.numberOfDigits, numberOfDigits) || other.numberOfDigits == numberOfDigits)&&(identical(other.truckBrand, truckBrand) || other.truckBrand == truckBrand)&&(identical(other.boatType, boatType) || other.boatType == boatType)&&(identical(other.partType, partType) || other.partType == partType)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,motorcycleBrand,motorcycleBrandLogoUrl,motorcycleModel,motorcycleFuelType,motorcycleCC,carBrand,carBrandLogoUrl,carModel,version,carType,numberOfSeats,condition,horsepower,fuelConsumption,kilometers,year,numberOfOwners,fuelType,vehicleInterior,vehicleColor,numberOfDoors,transmissionType,const DeepCollectionEquality().hash(carFeatures),airConditioning,motorcycleType,accessoryType,numberOfDigits,truckBrand,boatType,partType,vehicleType]);

@override
String toString() {
  return 'VehiclesDetails(motorcycleBrand: $motorcycleBrand, motorcycleBrandLogoUrl: $motorcycleBrandLogoUrl, motorcycleModel: $motorcycleModel, motorcycleFuelType: $motorcycleFuelType, motorcycleCC: $motorcycleCC, carBrand: $carBrand, carBrandLogoUrl: $carBrandLogoUrl, carModel: $carModel, version: $version, carType: $carType, numberOfSeats: $numberOfSeats, condition: $condition, horsepower: $horsepower, fuelConsumption: $fuelConsumption, kilometers: $kilometers, year: $year, numberOfOwners: $numberOfOwners, fuelType: $fuelType, vehicleInterior: $vehicleInterior, vehicleColor: $vehicleColor, numberOfDoors: $numberOfDoors, transmissionType: $transmissionType, carFeatures: $carFeatures, airConditioning: $airConditioning, motorcycleType: $motorcycleType, accessoryType: $accessoryType, numberOfDigits: $numberOfDigits, truckBrand: $truckBrand, boatType: $boatType, partType: $partType, vehicleType: $vehicleType)';
}


}

/// @nodoc
abstract mixin class $VehiclesDetailsCopyWith<$Res>  {
  factory $VehiclesDetailsCopyWith(VehiclesDetails value, $Res Function(VehiclesDetails) _then) = _$VehiclesDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MotorcycleBrand') String? motorcycleBrand,@JsonKey(includeFromJson: false, includeToJson: false) String? motorcycleBrandLogoUrl,@JsonKey(name: 'MotorcycleModel') String? motorcycleModel,@JsonKey(name: 'MotorcycleFuelType') MotorcycleFuelType? motorcycleFuelType,@JsonKey(name: 'MotorcycleCC') MotorcycleCC? motorcycleCC,@JsonKey(name: 'CarBrand') String? carBrand,@JsonKey(includeFromJson: false, includeToJson: false) String? carBrandLogoUrl,@JsonKey(name: 'CarModel') String? carModel,@JsonKey(name: 'Version') String? version,@JsonKey(name: 'CarType') CarType? carType,@JsonKey(name: 'NumberOfSeats') int? numberOfSeats,@JsonKey(name: 'Condition') VehicleCondition? condition,@JsonKey(name: 'HorsePower') int? horsepower,@JsonKey(name: 'FuelConsumptionLPer100Km') double? fuelConsumption,@JsonKey(name: 'Kilometers') int? kilometers,@JsonKey(name: 'Year') int? year,@JsonKey(name: 'NumberOfOwners') int? numberOfOwners,@JsonKey(name: 'FuelType') FuelType? fuelType,@JsonKey(name: 'VehicleInterior') VehicleInterior? vehicleInterior,@JsonKey(name: 'VehicleColor') VehicleColor? vehicleColor,@JsonKey(name: 'NumberOfDoors') int? numberOfDoors,@JsonKey(name: 'TransmissionType') TransmissionType? transmissionType,@JsonKey(name: 'CarFeatures') List<CarFeature>? carFeatures,@JsonKey(name: 'AirConditioning') AirConditioning? airConditioning,@JsonKey(name: 'MotorcycleType') MotorcycleType? motorcycleType,@JsonKey(name: 'AccessoryType') AccessoryType? accessoryType,@JsonKey(name: 'NumberOfDigits') PlateDigits? numberOfDigits,@JsonKey(name: 'TruckBrand') TruckBrand? truckBrand,@JsonKey(name: 'BoatType') BoatType? boatType,@JsonKey(name: 'PartType') PartType? partType,@JsonKey(name: 'VehicleType') VehicleType? vehicleType
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
@pragma('vm:prefer-inline') @override $Res call({Object? motorcycleBrand = freezed,Object? motorcycleBrandLogoUrl = freezed,Object? motorcycleModel = freezed,Object? motorcycleFuelType = freezed,Object? motorcycleCC = freezed,Object? carBrand = freezed,Object? carBrandLogoUrl = freezed,Object? carModel = freezed,Object? version = freezed,Object? carType = freezed,Object? numberOfSeats = freezed,Object? condition = freezed,Object? horsepower = freezed,Object? fuelConsumption = freezed,Object? kilometers = freezed,Object? year = freezed,Object? numberOfOwners = freezed,Object? fuelType = freezed,Object? vehicleInterior = freezed,Object? vehicleColor = freezed,Object? numberOfDoors = freezed,Object? transmissionType = freezed,Object? carFeatures = freezed,Object? airConditioning = freezed,Object? motorcycleType = freezed,Object? accessoryType = freezed,Object? numberOfDigits = freezed,Object? truckBrand = freezed,Object? boatType = freezed,Object? partType = freezed,Object? vehicleType = freezed,}) {
  return _then(_self.copyWith(
motorcycleBrand: freezed == motorcycleBrand ? _self.motorcycleBrand : motorcycleBrand // ignore: cast_nullable_to_non_nullable
as String?,motorcycleBrandLogoUrl: freezed == motorcycleBrandLogoUrl ? _self.motorcycleBrandLogoUrl : motorcycleBrandLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,motorcycleModel: freezed == motorcycleModel ? _self.motorcycleModel : motorcycleModel // ignore: cast_nullable_to_non_nullable
as String?,motorcycleFuelType: freezed == motorcycleFuelType ? _self.motorcycleFuelType : motorcycleFuelType // ignore: cast_nullable_to_non_nullable
as MotorcycleFuelType?,motorcycleCC: freezed == motorcycleCC ? _self.motorcycleCC : motorcycleCC // ignore: cast_nullable_to_non_nullable
as MotorcycleCC?,carBrand: freezed == carBrand ? _self.carBrand : carBrand // ignore: cast_nullable_to_non_nullable
as String?,carBrandLogoUrl: freezed == carBrandLogoUrl ? _self.carBrandLogoUrl : carBrandLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,carModel: freezed == carModel ? _self.carModel : carModel // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,carType: freezed == carType ? _self.carType : carType // ignore: cast_nullable_to_non_nullable
as CarType?,numberOfSeats: freezed == numberOfSeats ? _self.numberOfSeats : numberOfSeats // ignore: cast_nullable_to_non_nullable
as int?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as VehicleCondition?,horsepower: freezed == horsepower ? _self.horsepower : horsepower // ignore: cast_nullable_to_non_nullable
as int?,fuelConsumption: freezed == fuelConsumption ? _self.fuelConsumption : fuelConsumption // ignore: cast_nullable_to_non_nullable
as double?,kilometers: freezed == kilometers ? _self.kilometers : kilometers // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,numberOfOwners: freezed == numberOfOwners ? _self.numberOfOwners : numberOfOwners // ignore: cast_nullable_to_non_nullable
as int?,fuelType: freezed == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as FuelType?,vehicleInterior: freezed == vehicleInterior ? _self.vehicleInterior : vehicleInterior // ignore: cast_nullable_to_non_nullable
as VehicleInterior?,vehicleColor: freezed == vehicleColor ? _self.vehicleColor : vehicleColor // ignore: cast_nullable_to_non_nullable
as VehicleColor?,numberOfDoors: freezed == numberOfDoors ? _self.numberOfDoors : numberOfDoors // ignore: cast_nullable_to_non_nullable
as int?,transmissionType: freezed == transmissionType ? _self.transmissionType : transmissionType // ignore: cast_nullable_to_non_nullable
as TransmissionType?,carFeatures: freezed == carFeatures ? _self.carFeatures : carFeatures // ignore: cast_nullable_to_non_nullable
as List<CarFeature>?,airConditioning: freezed == airConditioning ? _self.airConditioning : airConditioning // ignore: cast_nullable_to_non_nullable
as AirConditioning?,motorcycleType: freezed == motorcycleType ? _self.motorcycleType : motorcycleType // ignore: cast_nullable_to_non_nullable
as MotorcycleType?,accessoryType: freezed == accessoryType ? _self.accessoryType : accessoryType // ignore: cast_nullable_to_non_nullable
as AccessoryType?,numberOfDigits: freezed == numberOfDigits ? _self.numberOfDigits : numberOfDigits // ignore: cast_nullable_to_non_nullable
as PlateDigits?,truckBrand: freezed == truckBrand ? _self.truckBrand : truckBrand // ignore: cast_nullable_to_non_nullable
as TruckBrand?,boatType: freezed == boatType ? _self.boatType : boatType // ignore: cast_nullable_to_non_nullable
as BoatType?,partType: freezed == partType ? _self.partType : partType // ignore: cast_nullable_to_non_nullable
as PartType?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as VehicleType?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MotorcycleBrand')  String? motorcycleBrand, @JsonKey(includeFromJson: false, includeToJson: false)  String? motorcycleBrandLogoUrl, @JsonKey(name: 'MotorcycleModel')  String? motorcycleModel, @JsonKey(name: 'MotorcycleFuelType')  MotorcycleFuelType? motorcycleFuelType, @JsonKey(name: 'MotorcycleCC')  MotorcycleCC? motorcycleCC, @JsonKey(name: 'CarBrand')  String? carBrand, @JsonKey(includeFromJson: false, includeToJson: false)  String? carBrandLogoUrl, @JsonKey(name: 'CarModel')  String? carModel, @JsonKey(name: 'Version')  String? version, @JsonKey(name: 'CarType')  CarType? carType, @JsonKey(name: 'NumberOfSeats')  int? numberOfSeats, @JsonKey(name: 'Condition')  VehicleCondition? condition, @JsonKey(name: 'HorsePower')  int? horsepower, @JsonKey(name: 'FuelConsumptionLPer100Km')  double? fuelConsumption, @JsonKey(name: 'Kilometers')  int? kilometers, @JsonKey(name: 'Year')  int? year, @JsonKey(name: 'NumberOfOwners')  int? numberOfOwners, @JsonKey(name: 'FuelType')  FuelType? fuelType, @JsonKey(name: 'VehicleInterior')  VehicleInterior? vehicleInterior, @JsonKey(name: 'VehicleColor')  VehicleColor? vehicleColor, @JsonKey(name: 'NumberOfDoors')  int? numberOfDoors, @JsonKey(name: 'TransmissionType')  TransmissionType? transmissionType, @JsonKey(name: 'CarFeatures')  List<CarFeature>? carFeatures, @JsonKey(name: 'AirConditioning')  AirConditioning? airConditioning, @JsonKey(name: 'MotorcycleType')  MotorcycleType? motorcycleType, @JsonKey(name: 'AccessoryType')  AccessoryType? accessoryType, @JsonKey(name: 'NumberOfDigits')  PlateDigits? numberOfDigits, @JsonKey(name: 'TruckBrand')  TruckBrand? truckBrand, @JsonKey(name: 'BoatType')  BoatType? boatType, @JsonKey(name: 'PartType')  PartType? partType, @JsonKey(name: 'VehicleType')  VehicleType? vehicleType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VehiclesDetails() when $default != null:
return $default(_that.motorcycleBrand,_that.motorcycleBrandLogoUrl,_that.motorcycleModel,_that.motorcycleFuelType,_that.motorcycleCC,_that.carBrand,_that.carBrandLogoUrl,_that.carModel,_that.version,_that.carType,_that.numberOfSeats,_that.condition,_that.horsepower,_that.fuelConsumption,_that.kilometers,_that.year,_that.numberOfOwners,_that.fuelType,_that.vehicleInterior,_that.vehicleColor,_that.numberOfDoors,_that.transmissionType,_that.carFeatures,_that.airConditioning,_that.motorcycleType,_that.accessoryType,_that.numberOfDigits,_that.truckBrand,_that.boatType,_that.partType,_that.vehicleType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MotorcycleBrand')  String? motorcycleBrand, @JsonKey(includeFromJson: false, includeToJson: false)  String? motorcycleBrandLogoUrl, @JsonKey(name: 'MotorcycleModel')  String? motorcycleModel, @JsonKey(name: 'MotorcycleFuelType')  MotorcycleFuelType? motorcycleFuelType, @JsonKey(name: 'MotorcycleCC')  MotorcycleCC? motorcycleCC, @JsonKey(name: 'CarBrand')  String? carBrand, @JsonKey(includeFromJson: false, includeToJson: false)  String? carBrandLogoUrl, @JsonKey(name: 'CarModel')  String? carModel, @JsonKey(name: 'Version')  String? version, @JsonKey(name: 'CarType')  CarType? carType, @JsonKey(name: 'NumberOfSeats')  int? numberOfSeats, @JsonKey(name: 'Condition')  VehicleCondition? condition, @JsonKey(name: 'HorsePower')  int? horsepower, @JsonKey(name: 'FuelConsumptionLPer100Km')  double? fuelConsumption, @JsonKey(name: 'Kilometers')  int? kilometers, @JsonKey(name: 'Year')  int? year, @JsonKey(name: 'NumberOfOwners')  int? numberOfOwners, @JsonKey(name: 'FuelType')  FuelType? fuelType, @JsonKey(name: 'VehicleInterior')  VehicleInterior? vehicleInterior, @JsonKey(name: 'VehicleColor')  VehicleColor? vehicleColor, @JsonKey(name: 'NumberOfDoors')  int? numberOfDoors, @JsonKey(name: 'TransmissionType')  TransmissionType? transmissionType, @JsonKey(name: 'CarFeatures')  List<CarFeature>? carFeatures, @JsonKey(name: 'AirConditioning')  AirConditioning? airConditioning, @JsonKey(name: 'MotorcycleType')  MotorcycleType? motorcycleType, @JsonKey(name: 'AccessoryType')  AccessoryType? accessoryType, @JsonKey(name: 'NumberOfDigits')  PlateDigits? numberOfDigits, @JsonKey(name: 'TruckBrand')  TruckBrand? truckBrand, @JsonKey(name: 'BoatType')  BoatType? boatType, @JsonKey(name: 'PartType')  PartType? partType, @JsonKey(name: 'VehicleType')  VehicleType? vehicleType)  $default,) {final _that = this;
switch (_that) {
case _VehiclesDetails():
return $default(_that.motorcycleBrand,_that.motorcycleBrandLogoUrl,_that.motorcycleModel,_that.motorcycleFuelType,_that.motorcycleCC,_that.carBrand,_that.carBrandLogoUrl,_that.carModel,_that.version,_that.carType,_that.numberOfSeats,_that.condition,_that.horsepower,_that.fuelConsumption,_that.kilometers,_that.year,_that.numberOfOwners,_that.fuelType,_that.vehicleInterior,_that.vehicleColor,_that.numberOfDoors,_that.transmissionType,_that.carFeatures,_that.airConditioning,_that.motorcycleType,_that.accessoryType,_that.numberOfDigits,_that.truckBrand,_that.boatType,_that.partType,_that.vehicleType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MotorcycleBrand')  String? motorcycleBrand, @JsonKey(includeFromJson: false, includeToJson: false)  String? motorcycleBrandLogoUrl, @JsonKey(name: 'MotorcycleModel')  String? motorcycleModel, @JsonKey(name: 'MotorcycleFuelType')  MotorcycleFuelType? motorcycleFuelType, @JsonKey(name: 'MotorcycleCC')  MotorcycleCC? motorcycleCC, @JsonKey(name: 'CarBrand')  String? carBrand, @JsonKey(includeFromJson: false, includeToJson: false)  String? carBrandLogoUrl, @JsonKey(name: 'CarModel')  String? carModel, @JsonKey(name: 'Version')  String? version, @JsonKey(name: 'CarType')  CarType? carType, @JsonKey(name: 'NumberOfSeats')  int? numberOfSeats, @JsonKey(name: 'Condition')  VehicleCondition? condition, @JsonKey(name: 'HorsePower')  int? horsepower, @JsonKey(name: 'FuelConsumptionLPer100Km')  double? fuelConsumption, @JsonKey(name: 'Kilometers')  int? kilometers, @JsonKey(name: 'Year')  int? year, @JsonKey(name: 'NumberOfOwners')  int? numberOfOwners, @JsonKey(name: 'FuelType')  FuelType? fuelType, @JsonKey(name: 'VehicleInterior')  VehicleInterior? vehicleInterior, @JsonKey(name: 'VehicleColor')  VehicleColor? vehicleColor, @JsonKey(name: 'NumberOfDoors')  int? numberOfDoors, @JsonKey(name: 'TransmissionType')  TransmissionType? transmissionType, @JsonKey(name: 'CarFeatures')  List<CarFeature>? carFeatures, @JsonKey(name: 'AirConditioning')  AirConditioning? airConditioning, @JsonKey(name: 'MotorcycleType')  MotorcycleType? motorcycleType, @JsonKey(name: 'AccessoryType')  AccessoryType? accessoryType, @JsonKey(name: 'NumberOfDigits')  PlateDigits? numberOfDigits, @JsonKey(name: 'TruckBrand')  TruckBrand? truckBrand, @JsonKey(name: 'BoatType')  BoatType? boatType, @JsonKey(name: 'PartType')  PartType? partType, @JsonKey(name: 'VehicleType')  VehicleType? vehicleType)?  $default,) {final _that = this;
switch (_that) {
case _VehiclesDetails() when $default != null:
return $default(_that.motorcycleBrand,_that.motorcycleBrandLogoUrl,_that.motorcycleModel,_that.motorcycleFuelType,_that.motorcycleCC,_that.carBrand,_that.carBrandLogoUrl,_that.carModel,_that.version,_that.carType,_that.numberOfSeats,_that.condition,_that.horsepower,_that.fuelConsumption,_that.kilometers,_that.year,_that.numberOfOwners,_that.fuelType,_that.vehicleInterior,_that.vehicleColor,_that.numberOfDoors,_that.transmissionType,_that.carFeatures,_that.airConditioning,_that.motorcycleType,_that.accessoryType,_that.numberOfDigits,_that.truckBrand,_that.boatType,_that.partType,_that.vehicleType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VehiclesDetails implements VehiclesDetails {
  const _VehiclesDetails({@JsonKey(name: 'MotorcycleBrand') this.motorcycleBrand, @JsonKey(includeFromJson: false, includeToJson: false) this.motorcycleBrandLogoUrl, @JsonKey(name: 'MotorcycleModel') this.motorcycleModel, @JsonKey(name: 'MotorcycleFuelType') this.motorcycleFuelType, @JsonKey(name: 'MotorcycleCC') this.motorcycleCC, @JsonKey(name: 'CarBrand') this.carBrand, @JsonKey(includeFromJson: false, includeToJson: false) this.carBrandLogoUrl, @JsonKey(name: 'CarModel') this.carModel, @JsonKey(name: 'Version') this.version, @JsonKey(name: 'CarType') this.carType, @JsonKey(name: 'NumberOfSeats') this.numberOfSeats, @JsonKey(name: 'Condition') this.condition, @JsonKey(name: 'HorsePower') this.horsepower, @JsonKey(name: 'FuelConsumptionLPer100Km') this.fuelConsumption, @JsonKey(name: 'Kilometers') this.kilometers, @JsonKey(name: 'Year') this.year, @JsonKey(name: 'NumberOfOwners') this.numberOfOwners, @JsonKey(name: 'FuelType') this.fuelType, @JsonKey(name: 'VehicleInterior') this.vehicleInterior, @JsonKey(name: 'VehicleColor') this.vehicleColor, @JsonKey(name: 'NumberOfDoors') this.numberOfDoors, @JsonKey(name: 'TransmissionType') this.transmissionType, @JsonKey(name: 'CarFeatures') final  List<CarFeature>? carFeatures, @JsonKey(name: 'AirConditioning') this.airConditioning, @JsonKey(name: 'MotorcycleType') this.motorcycleType, @JsonKey(name: 'AccessoryType') this.accessoryType, @JsonKey(name: 'NumberOfDigits') this.numberOfDigits, @JsonKey(name: 'TruckBrand') this.truckBrand, @JsonKey(name: 'BoatType') this.boatType, @JsonKey(name: 'PartType') this.partType, @JsonKey(name: 'VehicleType') this.vehicleType}): _carFeatures = carFeatures;
  factory _VehiclesDetails.fromJson(Map<String, dynamic> json) => _$VehiclesDetailsFromJson(json);

@override@JsonKey(name: 'MotorcycleBrand') final  String? motorcycleBrand;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? motorcycleBrandLogoUrl;
@override@JsonKey(name: 'MotorcycleModel') final  String? motorcycleModel;
@override@JsonKey(name: 'MotorcycleFuelType') final  MotorcycleFuelType? motorcycleFuelType;
@override@JsonKey(name: 'MotorcycleCC') final  MotorcycleCC? motorcycleCC;
@override@JsonKey(name: 'CarBrand') final  String? carBrand;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? carBrandLogoUrl;
@override@JsonKey(name: 'CarModel') final  String? carModel;
@override@JsonKey(name: 'Version') final  String? version;
@override@JsonKey(name: 'CarType') final  CarType? carType;
@override@JsonKey(name: 'NumberOfSeats') final  int? numberOfSeats;
@override@JsonKey(name: 'Condition') final  VehicleCondition? condition;
@override@JsonKey(name: 'HorsePower') final  int? horsepower;
@override@JsonKey(name: 'FuelConsumptionLPer100Km') final  double? fuelConsumption;
@override@JsonKey(name: 'Kilometers') final  int? kilometers;
@override@JsonKey(name: 'Year') final  int? year;
@override@JsonKey(name: 'NumberOfOwners') final  int? numberOfOwners;
@override@JsonKey(name: 'FuelType') final  FuelType? fuelType;
@override@JsonKey(name: 'VehicleInterior') final  VehicleInterior? vehicleInterior;
@override@JsonKey(name: 'VehicleColor') final  VehicleColor? vehicleColor;
@override@JsonKey(name: 'NumberOfDoors') final  int? numberOfDoors;
@override@JsonKey(name: 'TransmissionType') final  TransmissionType? transmissionType;
 final  List<CarFeature>? _carFeatures;
@override@JsonKey(name: 'CarFeatures') List<CarFeature>? get carFeatures {
  final value = _carFeatures;
  if (value == null) return null;
  if (_carFeatures is EqualUnmodifiableListView) return _carFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'AirConditioning') final  AirConditioning? airConditioning;
@override@JsonKey(name: 'MotorcycleType') final  MotorcycleType? motorcycleType;
@override@JsonKey(name: 'AccessoryType') final  AccessoryType? accessoryType;
@override@JsonKey(name: 'NumberOfDigits') final  PlateDigits? numberOfDigits;
@override@JsonKey(name: 'TruckBrand') final  TruckBrand? truckBrand;
@override@JsonKey(name: 'BoatType') final  BoatType? boatType;
@override@JsonKey(name: 'PartType') final  PartType? partType;
@override@JsonKey(name: 'VehicleType') final  VehicleType? vehicleType;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VehiclesDetails&&(identical(other.motorcycleBrand, motorcycleBrand) || other.motorcycleBrand == motorcycleBrand)&&(identical(other.motorcycleBrandLogoUrl, motorcycleBrandLogoUrl) || other.motorcycleBrandLogoUrl == motorcycleBrandLogoUrl)&&(identical(other.motorcycleModel, motorcycleModel) || other.motorcycleModel == motorcycleModel)&&(identical(other.motorcycleFuelType, motorcycleFuelType) || other.motorcycleFuelType == motorcycleFuelType)&&(identical(other.motorcycleCC, motorcycleCC) || other.motorcycleCC == motorcycleCC)&&(identical(other.carBrand, carBrand) || other.carBrand == carBrand)&&(identical(other.carBrandLogoUrl, carBrandLogoUrl) || other.carBrandLogoUrl == carBrandLogoUrl)&&(identical(other.carModel, carModel) || other.carModel == carModel)&&(identical(other.version, version) || other.version == version)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.numberOfSeats, numberOfSeats) || other.numberOfSeats == numberOfSeats)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.horsepower, horsepower) || other.horsepower == horsepower)&&(identical(other.fuelConsumption, fuelConsumption) || other.fuelConsumption == fuelConsumption)&&(identical(other.kilometers, kilometers) || other.kilometers == kilometers)&&(identical(other.year, year) || other.year == year)&&(identical(other.numberOfOwners, numberOfOwners) || other.numberOfOwners == numberOfOwners)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType)&&(identical(other.vehicleInterior, vehicleInterior) || other.vehicleInterior == vehicleInterior)&&(identical(other.vehicleColor, vehicleColor) || other.vehicleColor == vehicleColor)&&(identical(other.numberOfDoors, numberOfDoors) || other.numberOfDoors == numberOfDoors)&&(identical(other.transmissionType, transmissionType) || other.transmissionType == transmissionType)&&const DeepCollectionEquality().equals(other._carFeatures, _carFeatures)&&(identical(other.airConditioning, airConditioning) || other.airConditioning == airConditioning)&&(identical(other.motorcycleType, motorcycleType) || other.motorcycleType == motorcycleType)&&(identical(other.accessoryType, accessoryType) || other.accessoryType == accessoryType)&&(identical(other.numberOfDigits, numberOfDigits) || other.numberOfDigits == numberOfDigits)&&(identical(other.truckBrand, truckBrand) || other.truckBrand == truckBrand)&&(identical(other.boatType, boatType) || other.boatType == boatType)&&(identical(other.partType, partType) || other.partType == partType)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,motorcycleBrand,motorcycleBrandLogoUrl,motorcycleModel,motorcycleFuelType,motorcycleCC,carBrand,carBrandLogoUrl,carModel,version,carType,numberOfSeats,condition,horsepower,fuelConsumption,kilometers,year,numberOfOwners,fuelType,vehicleInterior,vehicleColor,numberOfDoors,transmissionType,const DeepCollectionEquality().hash(_carFeatures),airConditioning,motorcycleType,accessoryType,numberOfDigits,truckBrand,boatType,partType,vehicleType]);

@override
String toString() {
  return 'VehiclesDetails(motorcycleBrand: $motorcycleBrand, motorcycleBrandLogoUrl: $motorcycleBrandLogoUrl, motorcycleModel: $motorcycleModel, motorcycleFuelType: $motorcycleFuelType, motorcycleCC: $motorcycleCC, carBrand: $carBrand, carBrandLogoUrl: $carBrandLogoUrl, carModel: $carModel, version: $version, carType: $carType, numberOfSeats: $numberOfSeats, condition: $condition, horsepower: $horsepower, fuelConsumption: $fuelConsumption, kilometers: $kilometers, year: $year, numberOfOwners: $numberOfOwners, fuelType: $fuelType, vehicleInterior: $vehicleInterior, vehicleColor: $vehicleColor, numberOfDoors: $numberOfDoors, transmissionType: $transmissionType, carFeatures: $carFeatures, airConditioning: $airConditioning, motorcycleType: $motorcycleType, accessoryType: $accessoryType, numberOfDigits: $numberOfDigits, truckBrand: $truckBrand, boatType: $boatType, partType: $partType, vehicleType: $vehicleType)';
}


}

/// @nodoc
abstract mixin class _$VehiclesDetailsCopyWith<$Res> implements $VehiclesDetailsCopyWith<$Res> {
  factory _$VehiclesDetailsCopyWith(_VehiclesDetails value, $Res Function(_VehiclesDetails) _then) = __$VehiclesDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MotorcycleBrand') String? motorcycleBrand,@JsonKey(includeFromJson: false, includeToJson: false) String? motorcycleBrandLogoUrl,@JsonKey(name: 'MotorcycleModel') String? motorcycleModel,@JsonKey(name: 'MotorcycleFuelType') MotorcycleFuelType? motorcycleFuelType,@JsonKey(name: 'MotorcycleCC') MotorcycleCC? motorcycleCC,@JsonKey(name: 'CarBrand') String? carBrand,@JsonKey(includeFromJson: false, includeToJson: false) String? carBrandLogoUrl,@JsonKey(name: 'CarModel') String? carModel,@JsonKey(name: 'Version') String? version,@JsonKey(name: 'CarType') CarType? carType,@JsonKey(name: 'NumberOfSeats') int? numberOfSeats,@JsonKey(name: 'Condition') VehicleCondition? condition,@JsonKey(name: 'HorsePower') int? horsepower,@JsonKey(name: 'FuelConsumptionLPer100Km') double? fuelConsumption,@JsonKey(name: 'Kilometers') int? kilometers,@JsonKey(name: 'Year') int? year,@JsonKey(name: 'NumberOfOwners') int? numberOfOwners,@JsonKey(name: 'FuelType') FuelType? fuelType,@JsonKey(name: 'VehicleInterior') VehicleInterior? vehicleInterior,@JsonKey(name: 'VehicleColor') VehicleColor? vehicleColor,@JsonKey(name: 'NumberOfDoors') int? numberOfDoors,@JsonKey(name: 'TransmissionType') TransmissionType? transmissionType,@JsonKey(name: 'CarFeatures') List<CarFeature>? carFeatures,@JsonKey(name: 'AirConditioning') AirConditioning? airConditioning,@JsonKey(name: 'MotorcycleType') MotorcycleType? motorcycleType,@JsonKey(name: 'AccessoryType') AccessoryType? accessoryType,@JsonKey(name: 'NumberOfDigits') PlateDigits? numberOfDigits,@JsonKey(name: 'TruckBrand') TruckBrand? truckBrand,@JsonKey(name: 'BoatType') BoatType? boatType,@JsonKey(name: 'PartType') PartType? partType,@JsonKey(name: 'VehicleType') VehicleType? vehicleType
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
@override @pragma('vm:prefer-inline') $Res call({Object? motorcycleBrand = freezed,Object? motorcycleBrandLogoUrl = freezed,Object? motorcycleModel = freezed,Object? motorcycleFuelType = freezed,Object? motorcycleCC = freezed,Object? carBrand = freezed,Object? carBrandLogoUrl = freezed,Object? carModel = freezed,Object? version = freezed,Object? carType = freezed,Object? numberOfSeats = freezed,Object? condition = freezed,Object? horsepower = freezed,Object? fuelConsumption = freezed,Object? kilometers = freezed,Object? year = freezed,Object? numberOfOwners = freezed,Object? fuelType = freezed,Object? vehicleInterior = freezed,Object? vehicleColor = freezed,Object? numberOfDoors = freezed,Object? transmissionType = freezed,Object? carFeatures = freezed,Object? airConditioning = freezed,Object? motorcycleType = freezed,Object? accessoryType = freezed,Object? numberOfDigits = freezed,Object? truckBrand = freezed,Object? boatType = freezed,Object? partType = freezed,Object? vehicleType = freezed,}) {
  return _then(_VehiclesDetails(
motorcycleBrand: freezed == motorcycleBrand ? _self.motorcycleBrand : motorcycleBrand // ignore: cast_nullable_to_non_nullable
as String?,motorcycleBrandLogoUrl: freezed == motorcycleBrandLogoUrl ? _self.motorcycleBrandLogoUrl : motorcycleBrandLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,motorcycleModel: freezed == motorcycleModel ? _self.motorcycleModel : motorcycleModel // ignore: cast_nullable_to_non_nullable
as String?,motorcycleFuelType: freezed == motorcycleFuelType ? _self.motorcycleFuelType : motorcycleFuelType // ignore: cast_nullable_to_non_nullable
as MotorcycleFuelType?,motorcycleCC: freezed == motorcycleCC ? _self.motorcycleCC : motorcycleCC // ignore: cast_nullable_to_non_nullable
as MotorcycleCC?,carBrand: freezed == carBrand ? _self.carBrand : carBrand // ignore: cast_nullable_to_non_nullable
as String?,carBrandLogoUrl: freezed == carBrandLogoUrl ? _self.carBrandLogoUrl : carBrandLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,carModel: freezed == carModel ? _self.carModel : carModel // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,carType: freezed == carType ? _self.carType : carType // ignore: cast_nullable_to_non_nullable
as CarType?,numberOfSeats: freezed == numberOfSeats ? _self.numberOfSeats : numberOfSeats // ignore: cast_nullable_to_non_nullable
as int?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as VehicleCondition?,horsepower: freezed == horsepower ? _self.horsepower : horsepower // ignore: cast_nullable_to_non_nullable
as int?,fuelConsumption: freezed == fuelConsumption ? _self.fuelConsumption : fuelConsumption // ignore: cast_nullable_to_non_nullable
as double?,kilometers: freezed == kilometers ? _self.kilometers : kilometers // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,numberOfOwners: freezed == numberOfOwners ? _self.numberOfOwners : numberOfOwners // ignore: cast_nullable_to_non_nullable
as int?,fuelType: freezed == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as FuelType?,vehicleInterior: freezed == vehicleInterior ? _self.vehicleInterior : vehicleInterior // ignore: cast_nullable_to_non_nullable
as VehicleInterior?,vehicleColor: freezed == vehicleColor ? _self.vehicleColor : vehicleColor // ignore: cast_nullable_to_non_nullable
as VehicleColor?,numberOfDoors: freezed == numberOfDoors ? _self.numberOfDoors : numberOfDoors // ignore: cast_nullable_to_non_nullable
as int?,transmissionType: freezed == transmissionType ? _self.transmissionType : transmissionType // ignore: cast_nullable_to_non_nullable
as TransmissionType?,carFeatures: freezed == carFeatures ? _self._carFeatures : carFeatures // ignore: cast_nullable_to_non_nullable
as List<CarFeature>?,airConditioning: freezed == airConditioning ? _self.airConditioning : airConditioning // ignore: cast_nullable_to_non_nullable
as AirConditioning?,motorcycleType: freezed == motorcycleType ? _self.motorcycleType : motorcycleType // ignore: cast_nullable_to_non_nullable
as MotorcycleType?,accessoryType: freezed == accessoryType ? _self.accessoryType : accessoryType // ignore: cast_nullable_to_non_nullable
as AccessoryType?,numberOfDigits: freezed == numberOfDigits ? _self.numberOfDigits : numberOfDigits // ignore: cast_nullable_to_non_nullable
as PlateDigits?,truckBrand: freezed == truckBrand ? _self.truckBrand : truckBrand // ignore: cast_nullable_to_non_nullable
as TruckBrand?,boatType: freezed == boatType ? _self.boatType : boatType // ignore: cast_nullable_to_non_nullable
as BoatType?,partType: freezed == partType ? _self.partType : partType // ignore: cast_nullable_to_non_nullable
as PartType?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as VehicleType?,
  ));
}


}

// dart format on
