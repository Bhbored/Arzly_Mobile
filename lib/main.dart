import 'package:arzly/core/themes/theme_selector.dart';
import 'package:arzly/features/auth/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeSelector.lightTheme,
      home: LoginPage(),
    );
  }
}
