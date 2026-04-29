import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ComputerScreenSize {
  @JsonValue('Inches10to10_9')
  inches10to10_9,
  @JsonValue('Inches11to11_9')
  inches11to11_9,
  @JsonValue('Inches12to12_9')
  inches12to12_9,
  @JsonValue('Inches13to13_9')
  inches13to13_9,
  @JsonValue('Inches14to14_9')
  inches14to14_9,
  @JsonValue('Inches15to15_9')
  inches15to15_9,
  @JsonValue('Inches16to16_9')
  inches16to16_9,
  @JsonValue('Inches17Plus')
  inches17Plus,
  @JsonValue('Other')
  other,
}
