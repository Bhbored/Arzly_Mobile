import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum VehicleType {
  @JsonValue('Boat')
  boat,
  @JsonValue('Car')
  car,
  @JsonValue('Motorcycle')
  motorcycle,
  @JsonValue('Other')
  other,
  @JsonValue('TruckAndBuses')
  truckAndBuses,
}

extension VehicleTypeDisplay on VehicleType {
  String get label => switch (this) {
    VehicleType.boat => 'Boat',
    VehicleType.car => 'Car',
    VehicleType.motorcycle => 'Motorcycle',
    VehicleType.other => 'Other',
    VehicleType.truckAndBuses => 'Truck and Buses',
  };
  static List<String> get labels =>
      VehicleType.values.map((e) => e.label).toList();
}
