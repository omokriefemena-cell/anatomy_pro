import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    color: Color(0xFFEAF4FF),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.biotech,
                    size: 90,
                    color: Color(0xFF0056B3),
                  ),
                ),

                const SizedBox(height: 35),

                Text(
                  "Anatomy Pro",
                  style: theme.textTheme.displayLarge?.copyWith(fontSize: 42),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Master Human Anatomy",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),

                const SizedBox(height: 16),

                const Text(
                  "3D Anatomy • Histology • Quizzes • AI Tutor",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),

                const SizedBox(height: 60),

                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text("Start Learning"),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Version 1.0",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
