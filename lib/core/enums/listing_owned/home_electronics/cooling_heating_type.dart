import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CoolingHeatingType {
  @JsonValue('SplitAC')
  splitAC,
  @JsonValue('WindowAC')
  windowAC,
  @JsonValue('PortableAC')
  portableAC,
  @JsonValue('CentralAC')
  centralAC,
  @JsonValue('Fan')
  fan,
  @JsonValue('Heater')
  heater,
  @JsonValue('AirCooler')
  airCooler,
  @JsonValue('Other')
  other,
}
