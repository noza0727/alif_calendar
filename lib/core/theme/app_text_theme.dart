import 'package:flutter/material.dart';

import 'app_theme_color_scheme.dart';

class AppTextTheme extends TextTheme {
  @override
  final TextStyle headline1;
  @override
  final TextStyle headline2;
  @override
  final TextStyle headline3;
  @override
  final TextStyle subtitle1;
  @override
  final TextStyle subtitle2;
  @override
  final TextStyle bodyText1;
  @override
  final TextStyle bodyText2;
  @override
  final TextStyle button;

  const AppTextTheme({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.subtitle1,
    required this.subtitle2,
    required this.bodyText1,
    required this.bodyText2,
    required this.button,
  }) : super(
          displayLarge: headline1,
          displayMedium: headline2,
          displaySmall: headline3,
          titleLarge: subtitle1,
          titleMedium: subtitle2,
          bodyLarge: bodyText1,
          bodyMedium: bodyText2,
        );

  factory AppTextTheme.byColorScheme(
    AppThemeColorScheme colorScheme,
  ) =>
      AppTextTheme(
        headline1: TextStyle(
          color: colorScheme.surface,
          fontSize: 26,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        headline2: TextStyle(
          color: colorScheme.surface,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        headline3: TextStyle(
          color: colorScheme.surface,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        subtitle1: TextStyle(
          color: colorScheme.surface,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        subtitle2: TextStyle(
          color: colorScheme.surface,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
        ),
        bodyText1: TextStyle(
          color: colorScheme.surface,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
        ),
        bodyText2: TextStyle(
          color: colorScheme.onSurface,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        button: TextStyle(
          color: colorScheme.surface,
          fontSize: 10,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
      );
}
