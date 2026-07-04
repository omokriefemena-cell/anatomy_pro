import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const AnatomyProApp());
}

class AnatomyProApp extends StatelessWidget {
  const AnatomyProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anatomy Pro',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
