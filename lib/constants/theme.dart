import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // New color palette
  static const Color primaryBlue = Color(0xFF004AAD);
  static const Color secondaryTeal = Color(0xFF00B7C2);
  static const Color charcoalBlack = Color(0xFF121212);
  static const Color offWhite = Color(0xFFF9FAFB);
  static const Color coral = Color(0xFFFF6B6B);

  static final ThemeData themeData = ThemeData(
    primaryColor: primaryBlue,
    colorScheme: const ColorScheme(
      primary: primaryBlue,
      secondary: secondaryTeal,
      surface: offWhite,
      background: offWhite,
      error: coral,
      onPrimary: offWhite,
      onSecondary: charcoalBlack,
      onSurface: charcoalBlack,
      onError: offWhite,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: offWhite,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Color(0xFF121212),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.2,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF121212),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
      ),
      displayLarge: TextStyle(
        color: Color(0xFF121212),
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      displayMedium: TextStyle(
        color: Color(0xFF121212),
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: coral,
        foregroundColor: offWhite,
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 6,
        shadowColor: primaryBlue.withOpacity(0.15),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryBlue,
        side: const BorderSide(color: primaryBlue, width: 2),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 0,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white.withOpacity(0.7),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(color: Color(0xFF666874)),
      contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryBlue,
      foregroundColor: offWhite,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: offWhite,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardThemeData(
      color: Colors.white.withOpacity(0.6),
      elevation: 8,
      shadowColor: primaryBlue.withOpacity(0.10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      margin: const EdgeInsets.all(16),
    ),
  );
}
