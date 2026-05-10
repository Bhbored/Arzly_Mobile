import 'package:arzly/core/enums/listing_owned/motors/motorcycle_type.dart';
import 'package:arzly/core/enums/vehicles_details/accessory_type.dart';
import 'package:arzly/core/enums/vehicles_details/boat_type.dart';
import 'package:arzly/core/enums/vehicles_details/car_feature.dart';
import 'package:arzly/core/enums/vehicles_details/fuel_type.dart';
import 'package:arzly/core/enums/vehicles_details/plate_digits.dart';
import 'package:arzly/core/enums/vehicles_details/transmission_type.dart';
import 'package:arzly/core/enums/vehicles_details/truck_brand.dart';
import 'package:arzly/core/enums/vehicles_details/vehicle_color.dart';
import 'package:arzly/core/enums/vehicles_details/vehicle_condition.dart';
import 'package:arzly/core/enums/vehicles_details/vehicle_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicles_details.freezed.dart';
part 'vehicles_details.g.dart';

@freezed
sealed class VehiclesDetails with _$VehiclesDetails {
  const factory VehiclesDetails({
    @JsonKey(name: 'ListingId') String? listingId,
    @JsonKey(name: 'CarBrand') String? carBrand,
    @JsonKey(name: 'CarModel') String? carModel,
    @JsonKey(name: 'Version') String? version,
    VehicleCondition? condition,
    @JsonKey(name: 'Kilometers') int? kilometers,
    @JsonKey(name: 'Year') int? year,
    FuelType? fuelType,
    VehicleColor? vehicleColor,
    @JsonKey(name: 'NumberOfDoors') int? numberOfDoors,
    TransmissionType? transmissionType,
    @JsonKey(name: 'CarFeatures') List<CarFeature>? carFeatures,
    MotorcycleType? motorcycleType,
    AccessoryType? accessoryType,
    VehicleType? vehicleType,
    PlateDigits? numberOfDigits,
    TruckBrand? truckBrand,
    BoatType? boatType,
  }) = _VehiclesDetails;

  factory VehiclesDetails.fromJson(Map<String, dynamic> json) =>
      _$VehiclesDetailsFromJson(json);
}
