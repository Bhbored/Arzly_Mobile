import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum FuelType {
  @JsonValue('Gasoline')
  gasoline,
  @JsonValue('Diesel')
  diesel,
  @JsonValue('Electric')
  electric,
  @JsonValue('Hybrid')
  hybrid,
  @JsonValue('PlugInHybrid')
  plugInHybrid,
  @JsonValue('CNG')
  cNG,
  @JsonValue('LPG')
  lPG,
  @JsonValue('Other')
  other,
}

extension FuelTypeDisplay on FuelType {
  String get label => switch (this) {
        FuelType.gasoline => 'Gasoline',
        FuelType.diesel => 'Diesel',
        FuelType.electric => 'Electric',
        FuelType.hybrid => 'Hybrid',
        FuelType.plugInHybrid => 'Plug-in hybrid',
        FuelType.cNG => 'CNG',
        FuelType.lPG => 'LPG',
        FuelType.other => 'Other',
      };
}
