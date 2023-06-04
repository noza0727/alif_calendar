import 'package:alif_calendar/features/main_calendar/bloc/calendar_bloc.dart';
import 'package:alif_calendar/features/main_calendar/presentation/main_calendar_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MainCalendarPage extends StatelessWidget {
  const MainCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalendarBloc(),
      child: const MainCalendarScreen(),
    );
  }
}
