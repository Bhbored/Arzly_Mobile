import 'package:flutter/material.dart';
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

const Map<PhoneColor, Color> kPhoneColorSwatches = {
  PhoneColor.black: Color(0xFF212121),
  PhoneColor.white: Color(0xFFFFFFFF),
  PhoneColor.silver: Color(0xFFB0BEC5),
  PhoneColor.gold: Color(0xFFFFD700),
  PhoneColor.roseGold: Color(0xFFB76E79),
  PhoneColor.red: Color(0xFFE53935),
  PhoneColor.blue: Color(0xFF1E88E5),
  PhoneColor.green: Color(0xFF43A047),
  PhoneColor.purple: Color(0xFF8E24AA),
  PhoneColor.yellow: Color(0xFFFDD835),
  PhoneColor.orange: Color(0xFFFB8C00),
  PhoneColor.pink: Color(0xFFEC407A),
  PhoneColor.gray: Color(0xFF78909C),
  PhoneColor.midnightGreen: Color(0xFF004D40),
  PhoneColor.sierraBlue: Color(0xFF5B7C99),
  PhoneColor.deepPurple: Color(0xFF4527A0),
  PhoneColor.naturalTitanium: Color(0xFF8D8D85),
  PhoneColor.other: Color(0xFF9E9E9E),
};

extension PhoneColorDisplay on PhoneColor {
  Color get swatchColor =>
      kPhoneColorSwatches[this] ?? const Color(0xFF9E9E9E);

  String get label => switch (this) {
        PhoneColor.black => 'Black',
        PhoneColor.white => 'White',
        PhoneColor.silver => 'Silver',
        PhoneColor.gold => 'Gold',
        PhoneColor.roseGold => 'Rose gold',
        PhoneColor.red => 'Red',
        PhoneColor.blue => 'Blue',
        PhoneColor.green => 'Green',
        PhoneColor.purple => 'Purple',
        PhoneColor.yellow => 'Yellow',
        PhoneColor.orange => 'Orange',
        PhoneColor.pink => 'Pink',
        PhoneColor.gray => 'Gray',
        PhoneColor.midnightGreen => 'Midnight green',
        PhoneColor.sierraBlue => 'Sierra blue',
        PhoneColor.deepPurple => 'Deep purple',
        PhoneColor.naturalTitanium => 'Natural titanium',
        PhoneColor.other => 'Other',
      };
}
