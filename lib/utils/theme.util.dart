import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme() {
    return ThemeData(
      primaryColor: Color(0xFF4A4A4A),
      scaffoldBackgroundColor: Color(0x000000),
      accentColor: Color(0xFF04C45D),
      brightness: Brightness.dark,
      buttonColor: Color(0xFF654AFF),
    );
  }
}
