import 'package:flutter/material.dart';
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

extension VehicleColorDisplay on VehicleColor {
  String get label => switch (this) {
    VehicleColor.black => 'Black',
    VehicleColor.white => 'White',
    VehicleColor.silver => 'Silver',
    VehicleColor.gray => 'Gray',
    VehicleColor.red => 'Red',
    VehicleColor.blue => 'Blue',
    VehicleColor.green => 'Green',
    VehicleColor.yellow => 'Yellow',
    VehicleColor.orange => 'Orange',
    VehicleColor.brown => 'Brown',
    VehicleColor.beige => 'Beige',
    VehicleColor.gold => 'Gold',
    VehicleColor.purple => 'Purple',
    VehicleColor.maroon => 'Maroon',
    VehicleColor.champagne => 'Champagne',
    VehicleColor.other => 'Other',
  };

  Color get color => switch (this) {
    VehicleColor.black => const Color(0xFF000000),
    VehicleColor.white => const Color(0xFFFFFFFF),
    VehicleColor.silver => const Color(0xFFC0C0C0),
    VehicleColor.gray => const Color(0xFF808080),
    VehicleColor.red => const Color(0xFFFF0000),
    VehicleColor.blue => const Color(0xFF0000FF),
    VehicleColor.green => const Color(0xFF008000),
    VehicleColor.yellow => const Color(0xFFFFFF00),
    VehicleColor.orange => const Color(0xFFFFA500),
    VehicleColor.brown => const Color(0xFF8B4513),
    VehicleColor.beige => const Color(0xFFF5F5DC),
    VehicleColor.gold => const Color(0xFFFFD700),
    VehicleColor.purple => const Color(0xFF800080),
    VehicleColor.maroon => const Color(0xFF800000),
    VehicleColor.champagne => const Color(0xFFF7E7CE),
    VehicleColor.other => const Color(0xFFCCCCCC),
  };

  static List<String> get labels =>
      VehicleColor.values.map((e) => e.label).toList();

  static Map<Color, String> get colorMap => {
    for (final e in VehicleColor.values) e.color: e.label,
  };
}
