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

extension AccessoryTypeDisplay on AccessoryType {
  String get label => switch (this) {
        AccessoryType.tires => 'Tires',
        AccessoryType.rims => 'Rims',
        AccessoryType.soundSystem => 'Sound system',
        AccessoryType.screens => 'Screens',
        AccessoryType.spoilers => 'Spoilers',
        AccessoryType.lights => 'Lights',
        AccessoryType.seatCovers => 'Seat covers',
        AccessoryType.floorMats => 'Floor mats',
        AccessoryType.roofRack => 'Roof rack',
        AccessoryType.towHitch => 'Tow hitch',
        AccessoryType.phoneHolder => 'Phone holder',
        AccessoryType.charger => 'Charger',
        AccessoryType.dashboardCamera => 'Dashboard camera',
        AccessoryType.parkingSensors => 'Parking sensors',
        AccessoryType.other => 'Other',
      };
}
