import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum GymType {
  @JsonValue('Bodybuilding')
  bodybuilding,
  @JsonValue('BoxingAndMartialArts')
  boxingAndMartialArts,
  @JsonValue('TreadmillsAndCardioMachines')
  treadmillsAndCardioMachines,
  @JsonValue('YogaAndWellbeing')
  yogaAndWellbeing,
  @JsonValue('Other')
  other,
}
