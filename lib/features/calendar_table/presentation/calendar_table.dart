import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/features/calendar_table/domain/weekdays.dart';
import 'package:alif_calendar/features/calendar_table/utils/utils.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'widgets/navigation_button.dart';

class CalendarTable extends StatefulWidget {
  const CalendarTable({
    Key? key,
    this.onDayTapped,
    this.width,
    this.horizontalPadding,
  }) : super(key: key);

  final Function(DateTime dateTime)? onDayTapped;
  final double? width;
  final double? horizontalPadding;

  @override
  State<CalendarTable> createState() => _CalendarState();
}

class _CalendarState extends State<CalendarTable> {
  DateTime selectedDate = DateTime.now();
  DateTime? tappedDay;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    final days = _getDays(selectedDate);
    final padding = widget.horizontalPadding ?? 18.0;
    final width = widget.width ?? MediaQuery.of(context).size.width;
    final boxSize = (width - padding * 2) / 7;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    getMonthName(selectedDate),
                    style: textTheme.headline2,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NavigationButton(iconPath: Assets.icons.arrowLeft),
                      const SizedBox(width: 10),
                      NavigationButton(iconPath: Assets.icons.arrowRight),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: Weekdays.values
                .map<Widget>((e) => SizedBox(
                      width: boxSize,
                      child: Text(
                        e.toLabel(),
                        textAlign: TextAlign.center,
                        style: textTheme.subtitle1
                            .copyWith(color: colorScheme.onSurface),
                      ),
                    ))
                .toList(),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 18),
                child: Row(
                  children: days
                      .skip(index * 7)
                      .take(7)
                      .map((day) => GestureDetector(
                            onTap: () {
                              if (day == null) return;
                              setState(() {
                                tappedDay = selectedDate.copyWith(day: day);
                              });
                              if (widget.onDayTapped != null) {
                                widget.onDayTapped!(tappedDay!);
                              }
                            },
                            child: SizedBox(
                              width: boxSize,
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      tappedDay != null && tappedDay!.day == day
                                          ? colorScheme.primary
                                          : null,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        '${day ?? ''}',
                                        textAlign: TextAlign.center,
                                        style: textTheme.subtitle1.copyWith(
                                            color: tappedDay != null &&
                                                    tappedDay!.day == day
                                                ? colorScheme.white
                                                : colorScheme.surface),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              );
            },
            itemCount: 5,
          ),
        ],
      ),
    );
  }

  int _getWeekdayIndexOfTheMonth(DateTime dateTime) =>
      firstWeekdayOfMonth(dateTime).index;

  List<int?> _getDays(DateTime date) {
    final normalizedDate = normalizeDate(date);
    final lastDay = lastDayOfMonth(normalizedDate).day;
    final firstWeekdayIndex = _getWeekdayIndexOfTheMonth(date);
    final days = List.generate(
      lastDay + firstWeekdayIndex,
      (index) =>
          index < firstWeekdayIndex ? null : index - firstWeekdayIndex + 1,
    );
    return days;
  }
}
