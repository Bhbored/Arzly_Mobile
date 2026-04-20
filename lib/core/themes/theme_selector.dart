import 'package:arzly/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeSelector {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primaryLight,
          onPrimary: AppColors.onPrimaryLight,
          primaryContainer: AppColors.primaryContainerLight,
          onPrimaryContainer: AppColors.onPrimaryContainerLight,
          secondary: AppColors.secondaryLight,
          onSecondary: AppColors.onSecondaryLight,
          secondaryContainer: AppColors.secondaryContainerLight,
          onSecondaryContainer: AppColors.onSecondaryContainerLight,
          tertiary: AppColors.tertiaryLight,
          onTertiary: AppColors.onTertiaryLight,
          tertiaryContainer: AppColors.tertiaryContainerLight,
          onTertiaryContainer: AppColors.onTertiaryContainerLight,
          error: AppColors.errorLight,
          onError: AppColors.onErrorLight,
          errorContainer: AppColors.errorContainerLight,
          onErrorContainer: AppColors.onErrorContainerLight,
          surface: AppColors.surfaceLight,
          onSurface: AppColors.onSurfaceLight,
          surfaceContainerLowest: AppColors.surfaceContainerLowestLight,
          surfaceContainerLow: AppColors.surfaceContainerLowLight,
          surfaceContainer: AppColors.surfaceContainerLight,
          surfaceContainerHigh: AppColors.surfaceContainerHighLight,
          surfaceContainerHighest: AppColors.surfaceContainerHighestLight,
          outline: AppColors.outlineLight,
          outlineVariant: AppColors.outlineVariantLight,
          inverseSurface: AppColors.inverseSurface,
          onInverseSurface: AppColors.inverseOnSurface,
          inversePrimary: AppColors.inversePrimary,
        ),
        textTheme: GoogleFonts.ubuntuTextTheme(),
        inputDecorationTheme: _inputDecorationTheme(AppColors.surfaceContainerLowLight, AppColors.primaryLight),
        elevatedButtonTheme: _elevatedButtonTheme(AppColors.primaryLight, AppColors.onPrimaryLight),
        textButtonTheme: _textButtonTheme(AppColors.primaryLight),
      );

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primaryDark,
          onPrimary: AppColors.onPrimaryDark,
          primaryContainer: AppColors.primaryContainerDark,
          onPrimaryContainer: AppColors.onPrimaryContainerDark,
          secondary: AppColors.secondaryDark,
          onSecondary: AppColors.onSecondaryDark,
          secondaryContainer: AppColors.secondaryContainerDark,
          onSecondaryContainer: AppColors.onSecondaryContainerDark,
          tertiary: AppColors.tertiaryDark,
          onTertiary: AppColors.onTertiaryDark,
          tertiaryContainer: AppColors.tertiaryContainerDark,
          onTertiaryContainer: AppColors.onTertiaryContainerDark,
          error: AppColors.errorDark,
          onError: AppColors.onErrorDark,
          errorContainer: AppColors.errorContainerDark,
          onErrorContainer: AppColors.onErrorContainerDark,
          surface: AppColors.surfaceDark,
          onSurface: AppColors.onSurfaceDark,
          surfaceContainerLowest: AppColors.surfaceContainerLowestDark,
          surfaceContainerLow: AppColors.surfaceContainerLowDark,
          surfaceContainer: AppColors.surfaceContainerDark,
          surfaceContainerHigh: AppColors.surfaceContainerHighDark,
          surfaceContainerHighest: AppColors.surfaceContainerHighestDark,
          outline: AppColors.outlineDark,
          outlineVariant: AppColors.outlineVariantDark,
          inverseSurface: AppColors.surfaceLight,
          onInverseSurface: AppColors.onSurfaceLight,
          inversePrimary: AppColors.primaryLight,
        ),
        textTheme: GoogleFonts.ubuntuTextTheme(ThemeData.dark().textTheme),
        inputDecorationTheme: _inputDecorationTheme(AppColors.surfaceContainerLowDark, AppColors.primaryDark),
        elevatedButtonTheme: _elevatedButtonTheme(AppColors.primaryDark, AppColors.onPrimaryDark),
        textButtonTheme: _textButtonTheme(AppColors.primaryDark),
      );

  static InputDecorationTheme _inputDecorationTheme(Color fillColor, Color primaryColor) => InputDecorationTheme(
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

  static ElevatedButtonThemeData _elevatedButtonTheme(Color bgColor, Color fgColor) => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      );

  static TextButtonThemeData _textButtonTheme(Color color) => TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: color,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
