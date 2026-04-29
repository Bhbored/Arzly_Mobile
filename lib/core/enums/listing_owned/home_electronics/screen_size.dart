import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ScreenSize {
  @JsonValue('Inches20to29')
  inches20to29,
  @JsonValue('Inches30to39')
  inches30to39,
  @JsonValue('Inches40to49')
  inches40to49,
  @JsonValue('Inches50to59')
  inches50to59,
  @JsonValue('Inches60to69')
  inches60to69,
  @JsonValue('Inches70to80')
  inches70to80,
  @JsonValue('Other')
  other,
}
