import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/features/main_calendar/presentation/main_calendar_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppThemeProvider(
      initialTheme: AppTheme.lightTheme,
      child: MaterialApp(
        home: MainCalendarPage(),
      ),
    );
  }
}
