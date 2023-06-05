import 'package:alif_calendar/core/domain/event_model.dart';
import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/core/utils/color_utils.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.event,
    this.onTap,
  }) : super(key: key);

  final EventModel event;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    final color = priorityColor(event.priority);
    final darkerColor = priorityColorDark(event.priority);

    return RawMaterialButton(
      onPressed: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.name,
                    style: textTheme.headline2.copyWith(color: darkerColor),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    event.description ?? '',
                    style: textTheme.subtitle2.copyWith(color: darkerColor),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      if (event.time != null && event.time!.isNotEmpty)
                        SvgPicture.asset(
                          Assets.icons.clock,
                          color: darkerColor,
                        ),
                      if (event.time != null && event.time!.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            event.time!,
                            style: textTheme.subtitle1
                                .copyWith(color: darkerColor),
                          ),
                        ),
                      if (event.time != null && event.time!.isNotEmpty)
                        const SizedBox(width: 24),
                      if (event.location != null && event.location!.isNotEmpty)
                        SvgPicture.asset(
                          Assets.icons.location,
                          color: darkerColor,
                        ),
                      if (event.location != null && event.location!.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            event.location!,
                            style: textTheme.subtitle1
                                .copyWith(color: darkerColor),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
