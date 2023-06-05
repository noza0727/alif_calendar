import 'package:alif_calendar/core/routing/app_router.dart';
import 'package:alif_calendar/core/theme/app_theme.dart';
import 'package:alif_calendar/core/utils/color_utils.dart';
import 'package:alif_calendar/features/main_calendar/bloc/calendar_bloc.dart';
import 'package:alif_calendar/features/main_calendar/presentation/widgets/custom_button.dart';
import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewEventScreen extends StatelessWidget {
  const ViewEventScreen({
    Key? key,
    required this.eventId,
  }) : super(key: key);

  final int eventId;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final textTheme = appTheme.textTheme;
    final colorScheme = appTheme.colors;

    return Scaffold(
      body: BlocBuilder<CalendarBloc, CalendarState>(builder: (context, state) {
        return state.maybeMap(
            orElse: () => const Center(
                  child: CircularProgressIndicator(strokeWidth: 3),
                ),
            loadSuccess: (s) {
              final event = s.allEvents.firstWhere((e) => e.id == eventId);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 26),
                    decoration: BoxDecoration(
                      color: priorityColor(event.priority),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorScheme.white),
                                    child: SvgPicture.asset(
                                      Assets.icons.arrowLeft,
                                    ),
                                  ),
                                  onTap: () => context.router.pop(),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.router.push(
                                        CreateOrUpdateEventPageRoute(
                                            event: event));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0,
                                        bottom: 12.0,
                                        right: 4,
                                        left: 12.0),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(Assets.icons.edit),
                                        SizedBox(width: 4),
                                        Text(
                                          'Edit',
                                          style: textTheme.subtitle1.copyWith(
                                              color: colorScheme.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            event.name,
                            style: textTheme.headline1
                                .copyWith(color: colorScheme.white),
                          ),
                          Text(
                            event.description ?? '',
                            style: textTheme.subtitle2
                                .copyWith(color: colorScheme.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                  child: SvgPicture.asset(
                                    Assets.icons.clock,
                                    color: colorScheme.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    event.time ?? '-',
                                    style: textTheme.subtitle1
                                        .copyWith(color: colorScheme.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 24),
                          Row(
                            children: [
                              SizedBox(
                                width: 16,
                                child: SvgPicture.asset(
                                  Assets.icons.location,
                                  color: colorScheme.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  event.location ?? '-',
                                  style: textTheme.subtitle1
                                      .copyWith(color: colorScheme.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Reminder',
                            style: textTheme.headline2,
                          ),
                        ),
                        Text(
                          '15 minutes before',
                          style: textTheme.bodyText1
                              .copyWith(color: colorScheme.gray),
                        ),
                        const SizedBox(height: 22),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            'Description',
                            style: textTheme.headline2,
                          ),
                        ),
                        Text(
                          event.description ?? '',
                          style: textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SafeArea(
                    top: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 12.0),
                      child: CustomButton(
                        text: 'Delete Event',
                        onTap: () {
                          if (event.id != null) {
                            final bloc = BlocProvider.of<CalendarBloc>(context);
                            bloc.add(CalendarEvent.deleteEvent(id: event.id!));
                            context.router.pop();
                          }
                        },
                        color: colorScheme.red.withOpacity(0.2),
                        textColor: colorScheme.surface,
                        iconPath: Assets.icons.trash,
                      ),
                    ),
                  ),
                ],
              );
            });
      }),
    );
  }
}
