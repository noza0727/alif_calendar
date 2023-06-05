import 'package:flutter/cupertino.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    Key? key,
    required this.onDateChanged,
    required this.initialDateTime,
  }) : super(key: key);

  final Function(DateTime date) onDateChanged;
  final DateTime initialDateTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      padding: const EdgeInsets.only(top: 6.0),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      color: CupertinoColors.systemBackground.resolveFrom(context),
      child: SafeArea(
        top: false,
        child: CupertinoDatePicker(
          initialDateTime: initialDateTime,
          mode: CupertinoDatePickerMode.date,
          use24hFormat: true,
          minimumYear: 1950,
          maximumYear: 2950,
          onDateTimeChanged: onDateChanged,
        ),
      ),
    );
  }
}
