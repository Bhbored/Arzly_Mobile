import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum VehicleInterior {
  @JsonValue('Fabric')
  fabric,
  @JsonValue('FullLeather')
  fullLeather,
  @JsonValue('PartLeather')
  partLeather,
  @JsonValue('Velour')
  velour,
  @JsonValue('Alcantara')
  alcantara,
  @JsonValue('Suede')
  suede,
  @JsonValue('Other')
  other,
}

extension VehicleInteriorDisplay on VehicleInterior {
  String get label => switch (this) {
    VehicleInterior.fabric => 'Fabric',
    VehicleInterior.fullLeather => 'Full Leather',
    VehicleInterior.partLeather => 'Part Leather',
    VehicleInterior.velour => 'Velour',
    VehicleInterior.alcantara => 'Alcantara',
    VehicleInterior.suede => 'Suede',
    VehicleInterior.other => 'Other',
  };

  static List<String> get labels =>
      VehicleInterior.values.map((e) => e.label).toList();
}
