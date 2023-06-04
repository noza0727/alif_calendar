import 'package:alif_calendar/features/event/create_event/presentation/create_event_page.dart';
import 'package:alif_calendar/features/main_calendar/presentation/main_calendar_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: '')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: MainCalendarPageRoute.page,
          // path: '/main-calendar',
        ),
        AutoRoute(page: CreateEventPageRoute.page),
      ];
}
