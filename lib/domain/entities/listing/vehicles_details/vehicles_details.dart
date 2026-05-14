import 'package:arzly/core/enums/listing_owned/motors/accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/air_conditioning.dart';
import 'package:arzly/core/enums/listing_owned/motors/boat_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_cc.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/part_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/plate_digits.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/truck_brand.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_color.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_interior.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicles_details.freezed.dart';
part 'vehicles_details.g.dart';

@freezed
sealed class VehiclesDetails with _$VehiclesDetails {
  const factory VehiclesDetails({
    @JsonKey(name: 'MotorcycleBrand') String? motorcycleBrand,
    @JsonKey(includeFromJson: false, includeToJson: false)
    String? motorcycleBrandLogoUrl,
    @JsonKey(name: 'MotorcycleModel') String? motorcycleModel,
    @JsonKey(name: 'MotorcycleFuelType') MotorcycleFuelType? motorcycleFuelType,
    @JsonKey(name: 'MotorcycleCC') MotorcycleCC? motorcycleCC,
    @JsonKey(name: 'CarBrand') String? carBrand,
    @JsonKey(includeFromJson: false, includeToJson: false) String? carBrandLogoUrl,
    @JsonKey(name: 'CarModel') String? carModel,
    @JsonKey(name: 'Version') String? version,
    @JsonKey(name: 'CarType') CarType? carType,
    @JsonKey(name: 'NumberOfSeats') int? numberOfSeats,
    @JsonKey(name: 'Condition') VehicleCondition? condition,
    @JsonKey(name: 'HorsePower') int? horsepower,
    @JsonKey(name: 'FuelConsumptionLPer100Km') double? fuelConsumption,
    @JsonKey(name: 'Kilometers') int? kilometers,
    @JsonKey(name: 'Year') int? year,
    @JsonKey(name: 'NumberOfOwners') int? numberOfOwners,
    @JsonKey(name: 'FuelType') FuelType? fuelType,
    @JsonKey(name: 'VehicleInterior') VehicleInterior? vehicleInterior,
    @JsonKey(name: 'VehicleColor') VehicleColor? vehicleColor,
    @JsonKey(name: 'NumberOfDoors') int? numberOfDoors,
    @JsonKey(name: 'TransmissionType') TransmissionType? transmissionType,
    @JsonKey(name: 'CarFeatures') List<CarFeature>? carFeatures,
    @JsonKey(name: 'AirConditioning') AirConditioning? airConditioning,
    @JsonKey(name: 'MotorcycleType') MotorcycleType? motorcycleType,
    @JsonKey(name: 'AccessoryType') AccessoryType? accessoryType,
    @JsonKey(name: 'NumberOfDigits') PlateDigits? numberOfDigits,
    @JsonKey(name: 'TruckBrand') TruckBrand? truckBrand,
    @JsonKey(name: 'BoatType') BoatType? boatType,
    @JsonKey(name: 'PartType') PartType? partType,
    @JsonKey(name: 'VehicleType') VehicleType? vehicleType,
  }) = _VehiclesDetails;

  factory VehiclesDetails.fromJson(Map<String, dynamic> json) =>
      _$VehiclesDetailsFromJson(json);
}
