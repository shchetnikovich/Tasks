import 'package:flutter/material.dart';

class CustomColorTheme {
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF000000),
    primaryVariant: Color(0xFFF2F3FF),
    secondary: Color(0xFFEBEBEB),
    secondaryVariant: Color(0xFF575767),
    surface: Color(0xFFDADADA),
    background: Color(0xFFFFFFFF),
    brightness: Brightness.light,
    onBackground: Colors.white,
    error: Colors.red,
    onError: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFFFFFF),
    primaryVariant: Color(0xFF24242D),
    secondary: Color(0xFF29292F),
    secondaryVariant: Color(0xFFDADADA),
    surface: Color(0xFF0E0E11),
    brightness: Brightness.dark,
    background: Color(0xFF1E1F25),
    onBackground: Color(0x0DFFFFFF),
    error: Colors.red,
    onError: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
  );
}