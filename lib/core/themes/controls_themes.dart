import 'package:flutter/material.dart';

class ControlsThemes {
  static InputDecorationTheme inputDecorationTheme(
    Color fillColor,
    Color primaryColor,
  ) => InputDecorationTheme(
    filled: true,
    fillColor: fillColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: primaryColor, width: 1),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  );

  static ElevatedButtonThemeData elevatedButtonTheme(
    Color bgColor,
    Color fgColor,
  ) => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: fgColor,
      minimumSize: const Size(double.infinity, 56),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
  );

  static TextButtonThemeData textButtonTheme(Color color) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: color,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
}
