import 'package:arzly/core/enums/listing_owned/motors/accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/boat_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/plate_digits.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/truck_brand.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_color.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_type.dart';

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
