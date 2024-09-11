import 'package:flutter/material.dart';

class AppTheme {
  // Light theme color palette
  static const Color lightPrimaryColor = Colors.blue;
  static const Color lightButtonColor = Colors.blueAccent;
  static const Color lightBorderColor = Colors.grey;
  static const Color lightBackgroundColor = Colors.white;
  static const Color lightCardColor = Colors.white70;

  // Dark theme color palette
  static const Color darkPrimaryColor = Colors.blueGrey;
  static const Color darkButtonColor = Colors.blueGrey;
  static const Color darkBorderColor = Colors.white54;
  static const Color darkBackgroundColor = Color(0xFF121212);
  static final Color darkCardColor = Colors.grey[850]!;

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Inter',
    primarySwatch: Colors.blue,
    primaryColor: lightPrimaryColor,
    buttonTheme: const ButtonThemeData(buttonColor: lightButtonColor),
    cardColor: lightCardColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: lightButtonColor),
    dividerColor: lightBorderColor,
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(lightButtonColor),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20.0,
        )),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        elevation: WidgetStateProperty.all(5.0),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Inter',
    primarySwatch: Colors.blueGrey,
    primaryColor: darkPrimaryColor,
    buttonTheme: const ButtonThemeData(buttonColor: darkButtonColor),
    cardColor: darkCardColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    dividerColor: darkBorderColor,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: darkButtonColor,
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(darkButtonColor),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20.0,
        )),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        elevation: WidgetStateProperty.all(5.0),
      ),
    ),
  );
}
