import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PhoneColor {
  @JsonValue('Black')
  black,
  @JsonValue('White')
  white,
  @JsonValue('Silver')
  silver,
  @JsonValue('Gold')
  gold,
  @JsonValue('RoseGold')
  roseGold,
  @JsonValue('Red')
  red,
  @JsonValue('Blue')
  blue,
  @JsonValue('Green')
  green,
  @JsonValue('Purple')
  purple,
  @JsonValue('Yellow')
  yellow,
  @JsonValue('Orange')
  orange,
  @JsonValue('Pink')
  pink,
  @JsonValue('Gray')
  gray,
  @JsonValue('MidnightGreen')
  midnightGreen,
  @JsonValue('SierraBlue')
  sierraBlue,
  @JsonValue('DeepPurple')
  deepPurple,
  @JsonValue('NaturalTitanium')
  naturalTitanium,
  @JsonValue('Other')
  other,
}
