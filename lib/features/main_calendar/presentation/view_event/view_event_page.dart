import 'package:alif_calendar/features/main_calendar/presentation/view_event/view_event_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ViewEventPage extends StatelessWidget {
  const ViewEventPage({Key? key, required this.eventId}) : super(key: key);

  final int eventId;

  @override
  Widget build(BuildContext context) {
    return ViewEventScreen(eventId: eventId);
  }
}
