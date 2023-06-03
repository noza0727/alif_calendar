import 'package:flutter/material.dart';

class AppThemeColorScheme extends ColorScheme {
  static const _LightColorScheme light = _LightColorScheme();

  final Brightness brightness;
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color error;
  final Color onError;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color blue;
  final Color darkBlue;
  final Color red;
  final Color darkRed;
  final Color gray;
  final Color white;
  final Color yellow;
  final Color darkYellow;

  const AppThemeColorScheme({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.error,
    required this.onError,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.blue,
    required this.red,
    required this.gray,
    required this.white,
    required this.yellow,
    required this.darkBlue,
    required this.darkRed,
    required this.darkYellow,
  }) : super(
          primary: primary,
          secondary: secondary,
          surface: surface,
          background: background,
          error: error,
          onPrimary: onPrimary,
          onSecondary: onSecondary,
          onSurface: onSurface,
          onBackground: onBackground,
          onError: onError,
          brightness: brightness,
        );
}

class _LightColorScheme extends AppThemeColorScheme {
  //pinks should be changed to the color to be used
  const _LightColorScheme()
      : super(
          brightness: Brightness.light,
          primary: const Color(0xFF009FEE),
          secondary: const Color(0xFFF3F4F6),
          surface: const Color(0xFF292929),
          background: const Color(0xFFE5E5E5),
          error: const Color(0xFFEE2B00),
          onPrimary: const Color(0xFF009FEE),
          onSecondary: const Color(0xFF009FEE),
          onBackground: const Color(0xFFE5E5E5),
          onSurface: const Color(0xFF969696),
          onError: const Color(0xFFEE2B00),
          blue: const Color(0xFF009FEE),
          darkBlue: const Color(0xFF056EA1),
          red: const Color(0xFFEE2B00),
          darkRed: const Color(0xFFBF2200),
          gray: const Color(0xFF999999),
          white: const Color(0xFFFFFFFF),
          yellow: const Color(0xFFEE8F00),
          darkYellow: const Color(0xFFB86E00),
        );
}
