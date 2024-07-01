import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color blue = Color.fromARGB(255, 41, 148, 255);
  static const Color whiteText = Colors.white;
  static const Color blackText = Colors.black;

  static final ThemeData themeData = ThemeData(
      primaryColor: blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: blackText),
        bodyMedium: TextStyle(color: blackText),
        displayLarge: TextStyle(
            color: blackText, fontSize: 24, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            color: blackText, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      )));
}
