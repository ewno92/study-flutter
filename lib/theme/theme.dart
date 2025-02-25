import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  primaryColor: Colors.white,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.grey.shade400,
    onPrimary: Colors.grey.shade700,
    secondary: Colors.grey.shade500,
    onSecondary: Colors.grey.shade700,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.grey.shade300,
    onSurface: Colors.grey.shade700,
  ),
  dividerColor: Colors.white54,
);

ThemeData darkMode = ThemeData(
  primaryColor: Colors.black,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.black,
    onPrimary: Colors.grey.shade700,
    secondary: Colors.grey.shade500,
    onSecondary: Colors.grey.shade700,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.grey.shade300,
    onSurface: Colors.grey.shade700,
  ),
  brightness: Brightness.dark,
  dividerColor: Colors.black54,
);
