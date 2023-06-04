// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MainCalendarPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainCalendarPage(),
      );
    },
    CreateEventPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateEventPage(),
      );
    },
    CalendarWrapperPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const CalendarWrapperPage()),
      );
    },
  };
}

/// generated route for
/// [MainCalendarPage]
class MainCalendarPageRoute extends PageRouteInfo<void> {
  const MainCalendarPageRoute({List<PageRouteInfo>? children})
      : super(
          MainCalendarPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainCalendarPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateEventPage]
class CreateEventPageRoute extends PageRouteInfo<void> {
  const CreateEventPageRoute({List<PageRouteInfo>? children})
      : super(
          CreateEventPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateEventPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CalendarWrapperPage]
class CalendarWrapperPageRoute extends PageRouteInfo<void> {
  const CalendarWrapperPageRoute({List<PageRouteInfo>? children})
      : super(
          CalendarWrapperPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarWrapperPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
