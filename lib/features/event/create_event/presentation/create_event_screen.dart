import 'package:alif_calendar/core/extensions/context_extensions.dart';
import 'package:alif_calendar/core/presentation/custom_app_bar.dart';
import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/core/utils/color_utils.dart';
import 'package:alif_calendar/features/event/create_event/bloc/event_creation_bloc.dart';
import 'package:alif_calendar/features/event/create_event/presentation/widgets/color_drop_down_button.dart';
import 'package:alif_calendar/features/event/create_event/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({Key? key}) : super(key: key);

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _locationController;
  late final TextEditingController _timeController;
  int _priority = priorityIndexes.first;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _locationController = TextEditingController();
    _timeController = TextEditingController();
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
      child: BlocBuilder<EventCreationBloc, EventCreationState>(
          builder: (context, state) {
        return Scaffold(
          persistentFooterButtons: [
            RawMaterialButton(
              onPressed: () {
                final bloc = BlocProvider.of<EventCreationBloc>(context);
                bloc.add(EventCreationEvent.createEvent());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Add',
                    style:
                        textTheme.headline2.copyWith(color: colorScheme.white),
                  ),
                ),
              ),
            )
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
                        initialValue: priorityIndexes.first,
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
