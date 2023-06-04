import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.minLines = 1,
    this.maxLines = 10,
    this.trailingSvgPath,
    required this.controller,
  }) : super(key: key);

  final int maxLines;
  final int minLines;
  final String? trailingSvgPath;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final colorScheme = appTheme.colors;

    return TextField(
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: colorScheme.secondary,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.secondary),
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: trailingSvgPath != null
            ? Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset(
                  Assets.icons.location,
                  color: colorScheme.primary,
                ),
              )
            : null,
      ),
    );
  }
}
