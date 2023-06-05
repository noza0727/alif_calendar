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
    CalendarWrapperPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const CalendarWrapperPage()),
      );
    },
    ViewEventPageRoute.name: (routeData) {
      final args = routeData.argsAs<ViewEventPageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ViewEventPage(
          key: args.key,
          eventId: args.eventId,
        ),
      );
    },
    CreateOrUpdateEventPageRoute.name: (routeData) {
      final args = routeData.argsAs<CreateOrUpdateEventPageRouteArgs>(
          orElse: () => const CreateOrUpdateEventPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateOrUpdateEventPage(
          key: args.key,
          event: args.event,
        ),
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

/// generated route for
/// [ViewEventPage]
class ViewEventPageRoute extends PageRouteInfo<ViewEventPageRouteArgs> {
  ViewEventPageRoute({
    Key? key,
    required int eventId,
    List<PageRouteInfo>? children,
  }) : super(
          ViewEventPageRoute.name,
          args: ViewEventPageRouteArgs(
            key: key,
            eventId: eventId,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewEventPageRoute';

  static const PageInfo<ViewEventPageRouteArgs> page =
      PageInfo<ViewEventPageRouteArgs>(name);
}

class ViewEventPageRouteArgs {
  const ViewEventPageRouteArgs({
    this.key,
    required this.eventId,
  });

  final Key? key;

  final int eventId;

  @override
  String toString() {
    return 'ViewEventPageRouteArgs{key: $key, eventId: $eventId}';
  }
}

/// generated route for
/// [CreateOrUpdateEventPage]
class CreateOrUpdateEventPageRoute
    extends PageRouteInfo<CreateOrUpdateEventPageRouteArgs> {
  CreateOrUpdateEventPageRoute({
    Key? key,
    EventModel? event,
    List<PageRouteInfo>? children,
  }) : super(
          CreateOrUpdateEventPageRoute.name,
          args: CreateOrUpdateEventPageRouteArgs(
            key: key,
            event: event,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateOrUpdateEventPageRoute';

  static const PageInfo<CreateOrUpdateEventPageRouteArgs> page =
      PageInfo<CreateOrUpdateEventPageRouteArgs>(name);
}

class CreateOrUpdateEventPageRouteArgs {
  const CreateOrUpdateEventPageRouteArgs({
    this.key,
    this.event,
  });

  final Key? key;

  final EventModel? event;

  @override
  String toString() {
    return 'CreateOrUpdateEventPageRouteArgs{key: $key, event: $event}';
  }
}
