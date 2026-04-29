import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BandColor {
  @JsonValue('White')
  white,
  @JsonValue('Black')
  black,
  @JsonValue('Gold')
  gold,
  @JsonValue('Pink')
  pink,
  @JsonValue('Gray')
  gray,
  @JsonValue('Silver')
  silver,
  @JsonValue('Blue')
  blue,
  @JsonValue('Green')
  green,
  @JsonValue('Red')
  red,
  @JsonValue('Brown')
  brown,
  @JsonValue('Purple')
  purple,
  @JsonValue('Other')
  other,
}
