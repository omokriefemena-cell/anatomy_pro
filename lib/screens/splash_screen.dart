import 'dart:async';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(28),
              decoration: const BoxDecoration(
                color: Color(0xFFEAF4FF),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.biotech,
                size: 100,
                color: Color(0xFF0056B3),
              ),
            ),

            const SizedBox(height: 35),

            Text(
              "Anatomy Pro",
              style: theme.textTheme.displayLarge?.copyWith(fontSize: 40),
            ),

            const SizedBox(height: 10),

            const Text(
              "Master Human Anatomy",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),

            const SizedBox(height: 50),

            const CircularProgressIndicator(),

            const SizedBox(height: 20),

            const Text("Loading...", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
