import 'package:flutter/material.dart';

class AppTheme {
  // =========================
  // App Colors
  // =========================
  static const Color primaryBlue = Color(0xFF0056B3);
  static const Color secondaryBlue = Color(0xFF003366);

  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFFF9800);
  static const Color danger = Color(0xFFD32F2F);

  static const Color background = Colors.white;
  static const Color cardColor = Color(0xFFF7F9FC);

  // =========================
  // Light Theme
  // =========================
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryBlue,
        primary: primaryBlue,
        secondary: secondaryBlue,
        surface: background,
      ),

      scaffoldBackgroundColor: background,

      // -------------------------
      // AppBar Theme
      // -------------------------
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        foregroundColor: secondaryBlue,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: secondaryBlue,
        ),
      ),

      // -------------------------
      // Card Theme
      // -------------------------
      cardTheme: CardThemeData(
        color: cardColor,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),

      // -------------------------
      // Filled Button Theme
      // -------------------------
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primaryBlue,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),

      // -------------------------
      // Text Fields
      // -------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: primaryBlue, width: 2),
        ),
      ),

      // -------------------------
      // Text Theme
      // -------------------------
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: secondaryBlue,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: secondaryBlue,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: secondaryBlue,
        ),
        bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
        labelLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  // =========================
  // Dark Theme (for future use)
  // =========================
  static ThemeData get darkTheme {
    return ThemeData.dark(useMaterial3: true);
  }
}
