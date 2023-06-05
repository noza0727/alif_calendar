import 'package:alif_calendar/core/domain/event_model.dart';
import 'package:alif_calendar/core/extensions/context_extensions.dart';
import 'package:alif_calendar/core/presentation/custom_app_bar.dart';
import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/core/utils/color_utils.dart';
import 'package:alif_calendar/features/main_calendar/bloc/calendar_bloc.dart';
import 'package:alif_calendar/features/main_calendar/presentation/create_update_event/widgets/color_drop_down_button.dart';
import 'package:alif_calendar/features/main_calendar/presentation/create_update_event/widgets/custom_text_field.dart';
import 'package:alif_calendar/features/main_calendar/presentation/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrUpdateEventScreen extends StatefulWidget {
  const CreateOrUpdateEventScreen({
    Key? key,
    this.event,
  }) : super(key: key);

  final EventModel? event;

  @override
  State<CreateOrUpdateEventScreen> createState() =>
      _CreateOrUpdateEventScreenState();
}

class _CreateOrUpdateEventScreenState extends State<CreateOrUpdateEventScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _locationController;
  late final TextEditingController _timeController;
  late int _priority;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _locationController = TextEditingController();
    _timeController = TextEditingController();
    _priority = priorityIndexes.first;

    final event = widget.event;
    if (event != null) {
      _nameController.text = event.name ?? '';
      _descriptionController.text = event.description ?? '';
      _locationController.text = event.location ?? '';
      _timeController.text = event.time ?? '';
      _priority = event.priority;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    return GestureDetector(
      onTap: () => context.unfocus,
      child:
          BlocBuilder<CalendarBloc, CalendarState>(builder: (context, state) {
        return Scaffold(
          persistentFooterButtons: [
            CustomButton(
              text: widget.event != null ? 'Edit' : 'Add',
              color: colorScheme.primary,
              onTap: () {
                final name = _nameController.text;
                final description = _descriptionController.text;
                final time = _timeController.text;
                final location = _locationController.text;

                if (name.isNotEmpty) {
                  final bloc = BlocProvider.of<CalendarBloc>(context);
                  final date = bloc.selectedDate;
                  final event = widget.event != null
                      ? widget.event!.copyWith(
                          name: name,
                          description: description,
                          time: time,
                          location: location,
                          priority: _priority,
                        )
                      : EventModel(
                          name: name,
                          time: time,
                          priority: _priority,
                          description: description,
                          location: location,
                          date: date,
                        );
                  bloc.add(CalendarEvent.createOrUpdateEvent(event: event));
                  context.router.pop();
                } else {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                              'Please name your event',
                              textAlign: TextAlign.center,
                              style: textTheme.bodyText1,
                            ),
                          ));
                }
              },
            ),
          ],
          appBar: const CustomAppBar(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 18.0, top: 26),
              child: ListView(
                children: [
                  Text(
                    'Event name',
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 6),
                  CustomTextField(controller: _nameController),
                  const SizedBox(height: 18.0),
                  Text(
                    'Event description',
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 6),
                  CustomTextField(
                    controller: _descriptionController,
                    minLines: 5,
                  ),
                  const SizedBox(height: 18.0),
                  Text(
                    'Event location',
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 6),
                  CustomTextField(controller: _locationController),
                  const SizedBox(height: 18.0),
                  Text(
                    'Priority color',
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      ColorDropDownButton(
                        values: priorityIndexes,
                        initialValue: _priority,
                        onChanged: (value) {
                          _priority = value;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 18.0),
                  Text(
                    'Event time',
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 6),
                  CustomTextField(controller: _timeController),
                  const SizedBox(height: 18.0),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
