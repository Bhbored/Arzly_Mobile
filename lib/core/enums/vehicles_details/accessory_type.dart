import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum AccessoryType {
  @JsonValue('Tires')
  tires,
  @JsonValue('Rims')
  rims,
  @JsonValue('SoundSystem')
  soundSystem,
  @JsonValue('Screens')
  screens,
  @JsonValue('Spoilers')
  spoilers,
  @JsonValue('Lights')
  lights,
  @JsonValue('SeatCovers')
  seatCovers,
  @JsonValue('FloorMats')
  floorMats,
  @JsonValue('RoofRack')
  roofRack,
  @JsonValue('TowHitch')
  towHitch,
  @JsonValue('PhoneHolder')
  phoneHolder,
  @JsonValue('Charger')
  charger,
  @JsonValue('DashboardCamera')
  dashboardCamera,
  @JsonValue('ParkingSensors')
  parkingSensors,
  @JsonValue('Other')
  other,
}
