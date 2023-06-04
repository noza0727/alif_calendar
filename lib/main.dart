import 'package:alif_calendar/core/routing/app_router.dart';
import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlifCalendar());
}

class AlifCalendar extends StatelessWidget {
  AlifCalendar({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return AppThemeProvider(
      initialTheme: AppTheme.lightTheme,
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
