import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ComputerColor {
  @JsonValue('Black')
  black,
  @JsonValue('White')
  white,
  @JsonValue('Silver')
  silver,
  @JsonValue('Gray')
  gray,
  @JsonValue('Gold')
  gold,
  @JsonValue('RoseGold')
  roseGold,
  @JsonValue('Blue')
  blue,
  @JsonValue('Red')
  red,
  @JsonValue('Green')
  green,
  @JsonValue('Purple')
  purple,
  @JsonValue('Yellow')
  yellow,
  @JsonValue('Orange')
  orange,
  @JsonValue('Other')
  other,
}
