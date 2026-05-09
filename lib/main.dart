import 'package:arzly/core/themes/theme_selector.dart';
import 'package:arzly/data/providers/theme/theme_provider.dart';
import 'package:arzly/features/nav_container/nav_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //later user the package package_info_plus to add to sharedpreferences the data needed
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: ThemeSelector.lightTheme,
      darkTheme: ThemeSelector.darkTheme,
      home: NavContainer(),
    );
  }
}
