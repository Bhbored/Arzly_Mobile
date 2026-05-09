import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@Riverpod(keepAlive: true)
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() => ThemeMode.system;

  void setThemeMode(ThemeMode mode) {
    state = mode;
  }

  void setThemeFromLabel(String label) {
    state = switch (label) {
      'Light' => ThemeMode.light,
      'Dark' => ThemeMode.dark,
      'System' => ThemeMode.system,
      _ => ThemeMode.system,
    };
  }
}
