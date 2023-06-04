import 'package:alif_calendar/features/main_calendar/bloc/calendar_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CalendarWrapperPage extends StatelessWidget implements AutoRouteWrapper {
  const CalendarWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => CalendarBloc(),
      child: this,
    );
  }
}
