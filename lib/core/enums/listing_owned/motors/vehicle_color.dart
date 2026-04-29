import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum VehicleColor {
  @JsonValue('Black')
  black,
  @JsonValue('White')
  white,
  @JsonValue('Silver')
  silver,
  @JsonValue('Gray')
  gray,
  @JsonValue('Red')
  red,
  @JsonValue('Blue')
  blue,
  @JsonValue('Green')
  green,
  @JsonValue('Yellow')
  yellow,
  @JsonValue('Orange')
  orange,
  @JsonValue('Brown')
  brown,
  @JsonValue('Beige')
  beige,
  @JsonValue('Gold')
  gold,
  @JsonValue('Purple')
  purple,
  @JsonValue('Maroon')
  maroon,
  @JsonValue('Champagne')
  champagne,
  @JsonValue('Other')
  other,
}
