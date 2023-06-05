import 'package:alif_calendar/core/domain/event_model.dart';
import 'package:alif_calendar/features/main_calendar/presentation/create_update_event/create_update_event_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateOrUpdateEventPage extends StatelessWidget {
  const CreateOrUpdateEventPage({
    Key? key,
    this.event,
  }) : super(key: key);

  final EventModel? event;

  @override
  Widget build(BuildContext context) {
    return CreateOrUpdateEventScreen(event: event);
  }
}
