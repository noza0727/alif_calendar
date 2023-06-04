import 'package:alif_calendar/core/routing/app_router.dart';
import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/core/utils/date_utils.dart';
import 'package:alif_calendar/features/calendar_table/domain/weekdays.dart';
import 'package:alif_calendar/features/calendar_table/presentation/calendar_table.dart';
import 'package:alif_calendar/features/main_calendar/bloc/calendar_bloc.dart';
import 'package:alif_calendar/features/main_calendar/widgets/event_card.dart';
import 'package:alif_calendar/features/main_calendar/widgets/sized_button.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MainCalendarScreen extends StatelessWidget {
  const MainCalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    final bloc = BlocProvider.of<CalendarBloc>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BlocBuilder<CalendarBloc, CalendarState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12.0,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 30),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // showDatePicker(
                            //   context: context,
                            //   initialDate: bloc.selectedDate,
                            //   firstDate: bloc.today,
                            //   lastDate: DateTime(2024),
                            // );
                          },
                          child: Column(
                            children: [
                              Text(
                                getWeekDayByIndex(bloc.selectedDate.weekday)
                                    .toFullName(),
                                style: textTheme.headline2,
                              ),
                              SizedBox(height: 2),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    DateFormat('d MMMM yyyy')
                                        .format(bloc.selectedDate),
                                  ),
                                  const SizedBox(width: 6),
                                  SvgPicture.asset(Assets.icons.downArrow),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                        child: SvgPicture.asset(Assets.icons.notifications),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Expanded(
                  child: CalendarTable(
                    onDayTapped: (DateTime dateTapped) {
                      bloc.add(
                          CalendarEvent.updateSelectedDate(date: dateTapped));
                    },
                    onMonthChanged: (DateTime viewingMonthDate) {
                      bloc.add(CalendarEvent.loadEventsForMonth(
                          date: viewingMonthDate));
                    },
                    width: MediaQuery.of(context).size.width,
                    horizontalPadding: 12.0,
                  ),
                ),
                const SizedBox(height: 12),
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
                            SizedButton(
                              text: '+ Add Event',
                              onTap: () {
                                context.router.push(CreateEventPageRoute());
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        EventCard(),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
