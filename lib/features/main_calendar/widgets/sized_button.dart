import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SizedButton extends StatelessWidget {
  const SizedButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.width,
  }) : super(key: key);

  final double? width;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 102,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorScheme.primary,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: textTheme.subtitle1.copyWith(color: colorScheme.white),
          ),
        ),
      ),
    );
  }
}
