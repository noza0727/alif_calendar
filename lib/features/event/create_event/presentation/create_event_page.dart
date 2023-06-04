import 'package:alif_calendar/features/event/create_event/bloc/event_creation_bloc.dart';
import 'package:alif_calendar/features/event/create_event/presentation/create_event_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreateEventPage extends StatelessWidget {
  const CreateEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EventCreationBloc(),
      child: const CreateEventScreen(),
    );
  }
}
