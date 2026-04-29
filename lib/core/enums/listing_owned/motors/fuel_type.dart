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
