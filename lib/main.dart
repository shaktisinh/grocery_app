import 'package:flutter/material.dart';
import 'package:grocery_app/style/theme.dart';
import 'package:grocery_app/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hatanu - online grocery app',
      theme: light,
      home: const SplashScreen(),
    );
  }
}

