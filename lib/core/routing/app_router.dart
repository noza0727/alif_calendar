import 'package:alif_calendar/features/main_calendar/calendar_wrapper_page.dart';
import 'package:alif_calendar/features/main_calendar/presentation/create_event/create_event_page.dart';
import 'package:alif_calendar/features/main_calendar/presentation/main_calendar_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: '')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: CalendarWrapperPageRoute.page,
          children: <AutoRoute>[
            AutoRoute(
              initial: true,
              page: MainCalendarPageRoute.page,
            ),
            AutoRoute(page: CreateEventPageRoute.page),
          ],
        ),
      ];
}
