import 'package:alif_calendar/features/main_calendar/presentation/create_event/create_event_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateEventPage extends StatelessWidget {
  const CreateEventPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateEventScreen();
  }
}
