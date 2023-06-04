import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/core/utils/color_utils.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorDropDownButton extends StatefulWidget {
  const ColorDropDownButton({
    Key? key,
    required this.values,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  final List<int> values;
  final int initialValue;
  final Function(int value) onChanged;

  @override
  State<ColorDropDownButton> createState() => _ColorDropDownButtonState();
}

class _ColorDropDownButtonState extends State<ColorDropDownButton> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colors;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorScheme.secondary,
      ),
      child: DropdownButton<int>(
        value: selectedValue ?? widget.initialValue,
        onChanged: (value) {
          if (value != null) {
            setState(() {
              selectedValue = value;
            });
            widget.onChanged(value);
          }
        },
        items: widget.values.map<DropdownMenuItem<int>>((int priority) {
          return DropdownMenuItem<int>(
            value: priority,
            child: Container(
              width: 23,
              height: 20,
              color: priorityColor(priority),
            ),
          );
        }).toList(),
        underline: SizedBox(),
        icon: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: SvgPicture.asset(Assets.icons.dropDownArrow),
        ),
      ),
    );
  }
}
