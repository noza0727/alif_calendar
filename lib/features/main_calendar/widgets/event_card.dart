import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    final priorityColor = colorScheme.blue;
    final priorityDarkColor = colorScheme.darkBlue;

    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: colorScheme.blue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 10,
            decoration: BoxDecoration(
              color: colorScheme.blue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Watching Football ',
                  style: textTheme.headline2.copyWith(color: priorityDarkColor),
                ),
                SizedBox(height: 2),
                Text(
                  'Manchester United vs Arsenal (Premiere League)',
                  style: textTheme.subtitle2.copyWith(color: priorityDarkColor),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.clock,
                      color: priorityDarkColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        '17:00 - 18:30',
                        style: textTheme.subtitle1
                            .copyWith(color: priorityDarkColor),
                      ),
                    ),
                    SizedBox(width: 24),
                    SvgPicture.asset(
                      Assets.icons.location,
                      color: priorityDarkColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        'Stamford Bridge',
                        style: textTheme.subtitle1
                            .copyWith(color: priorityDarkColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
