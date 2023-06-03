import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/features/calendar_table/presentation/calendar_table.dart';
import 'package:alif_calendar/features/main_calendar/widget/event_card.dart';
import 'package:alif_calendar/features/main_calendar/widget/sized_button.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MainCalendarScreen extends StatelessWidget {
  const MainCalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 12.0),
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Saturday',
                          style: textTheme.headline2,
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              DateFormat('d MMMM yyyy').format(DateTime.now()),
                            ),
                            const SizedBox(width: 6),
                            SvgPicture.asset(Assets.icons.downArrow),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    child: SvgPicture.asset(Assets.icons.notifications),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Expanded(
              child: CalendarTable(
                onDayTapped: (DateTime dateTapped) {
                  print(dateTapped);
                },
                width: MediaQuery.of(context).size.width,
                horizontalPadding: 12.0,
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Schedule',
                        style: textTheme.headline2,
                      ),
                      SizedButton(text: '+ Add Event'),
                    ],
                  ),
                  SizedBox(height: 18),
                  EventCard(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
