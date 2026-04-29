import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ApartmentFeature {
  @JsonValue('Electricity24x7')
  electricity24x7,
  @JsonValue('Balcony')
  balcony,
  @JsonValue('BuiltInWardrobes')
  builtInWardrobes,
  @JsonValue('CentralAC')
  centralAC,
  @JsonValue('CoveredParking')
  coveredParking,
  @JsonValue('DriverRoom')
  driverRoom,
  @JsonValue('Elevator')
  elevator,
  @JsonValue('Garden')
  garden,
  @JsonValue('Gym')
  gym,
  @JsonValue('Intercom')
  intercom,
  @JsonValue('KitchenAppliances')
  kitchenAppliances,
  @JsonValue('LaundryRoom')
  laundryRoom,
  @JsonValue('MaidRoom')
  maidRoom,
  @JsonValue('PetsAllowed')
  petsAllowed,
  @JsonValue('Pool')
  pool,
  @JsonValue('Rooftop')
  rooftop,
  @JsonValue('Security')
  security,
  @JsonValue('Storage')
  storage,
  @JsonValue('ViewOfCity')
  viewOfCity,
  @JsonValue('ViewOfSea')
  viewOfSea,
  @JsonValue('WalkInCloset')
  walkInCloset,
}
