import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.textColor,
    this.iconPath,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? textColor;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    return RawMaterialButton(
      onPressed: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: color ?? colorScheme.primary,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconPath != null) SvgPicture.asset(iconPath!),
              if (iconPath != null) SizedBox(width: 6),
              Text(
                text,
                style: textTheme.headline2
                    .copyWith(color: textColor ?? colorScheme.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
