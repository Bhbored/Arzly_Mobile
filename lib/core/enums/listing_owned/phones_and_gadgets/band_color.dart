import 'package:flutter/material.dart';
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

const Map<BandColor, Color> kBandColorSwatches = {
  BandColor.white: Color(0xFFFFFFFF),
  BandColor.black: Color(0xFF212121),
  BandColor.gold: Color(0xFFFFD700),
  BandColor.pink: Color(0xFFEC407A),
  BandColor.gray: Color(0xFF78909C),
  BandColor.silver: Color(0xFFB0BEC5),
  BandColor.blue: Color(0xFF1E88E5),
  BandColor.green: Color(0xFF43A047),
  BandColor.red: Color(0xFFE53935),
  BandColor.brown: Color(0xFF795548),
  BandColor.purple: Color(0xFF8E24AA),
  BandColor.other: Color(0xFF9E9E9E),
};

extension BandColorDisplay on BandColor {
  static Map<Color, String> get swatchColorsToLabels => {
        for (final v in BandColor.values) v.swatchColor: v.label,
      };

  Color get swatchColor =>
      kBandColorSwatches[this] ?? const Color(0xFF9E9E9E);

  String get label => switch (this) {
        BandColor.white => 'White',
        BandColor.black => 'Black',
        BandColor.gold => 'Gold',
        BandColor.pink => 'Pink',
        BandColor.gray => 'Gray',
        BandColor.silver => 'Silver',
        BandColor.blue => 'Blue',
        BandColor.green => 'Green',
        BandColor.red => 'Red',
        BandColor.brown => 'Brown',
        BandColor.purple => 'Purple',
        BandColor.other => 'Other',
      };
}
