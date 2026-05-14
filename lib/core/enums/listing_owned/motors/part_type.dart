import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PartType {
  @JsonValue('Brakes')
  brakes,
  @JsonValue('OilAndFilters')
  oilAndFilters,
  @JsonValue('CoolingAndHeating')
  coolingAndHeating,
  @JsonValue('ElectricalAndLighting')
  electricalAndLighting,
  @JsonValue('EngineAndTransmission')
  engineAndTransmission,
  @JsonValue('ExhaustsAndEmission')
  exhaustsAndEmission,
  @JsonValue('OtherParts')
  otherParts,
  @JsonValue('SteeringAndSuspension')
  steeringAndSuspension,
}

extension PartTypeDisplay on PartType {
  String get label => switch (this) {
    PartType.brakes => 'Brakes',
    PartType.oilAndFilters => 'Oil & Filters',
    PartType.coolingAndHeating => 'Cooling & Heating',
    PartType.electricalAndLighting => 'Electrical & Lighting',
    PartType.engineAndTransmission => 'Engine & Transmission',
    PartType.exhaustsAndEmission => 'Exhausts and Emission',
    PartType.otherParts => 'Other Parts',
    PartType.steeringAndSuspension => 'Steering & Suspension',
  };
  static List<String> get labels =>
      PartType.values.map((e) => e.label).toList();
}
