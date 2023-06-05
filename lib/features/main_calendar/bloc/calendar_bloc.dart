import 'package:alif_calendar/core/dependency_injection/di_configuration.dart';
import 'package:alif_calendar/core/domain/event_model.dart';
import 'package:alif_calendar/core/utils/date_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_bloc.freezed.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(CalendarState.initial()) {
    on<CalendarEvent>(
      (event, emitter) async {
        await event.map<Future<void>>(
          updateSelectedDate: (_UpdateSelectedDateCalendarEvent event) =>
              _updateSelectedDate(event, emitter),
          loadEventsForMonth: (_LoadEventsForMonthCalendarEvent event) =>
              _loadEventsForMonth(event, emitter),
          loadInitialHandler: (_LoadInitialCalendarEvent event) =>
              _loadInitialHandler(event, emitter),
          createOrUpdateEvent: (_CreateOrUpdateEventCalendarEvent event) =>
              _createOrUpdateEvent(event, emitter),
          deleteEvent: (_DeleteEventCalendarEvent event) =>
              _deleteEvent(event, emitter),
        );
      },
    );
    add(const CalendarEvent.loadInitialHandler());
  }

  final DateTime _today = DateTime.now();
  late List<EventModel> _allEvents;
  bool _selectDateByFilter = false;

  DateTime get today => _today;

  DateTime get selectedDate => state.map(
        initial: (_) => _today,
        loading: (s) => s.selectedDate,
        loadSuccess: (s) => s.selectedDate,
        error: (s) => s.selectedDate,
      );

  bool get selectDateByFilter => _selectDateByFilter;

  Future<void> _loadInitialHandler(
    _LoadInitialCalendarEvent event,
    Emitter emitter,
  ) async {
    emitter(CalendarState.loading(selectedDate: selectedDate));
    final events = await assemble.calendarCacheStorage.getEventsByDateRange(
      fromDate: _today.copyWith(day: 1),
      toDate: _today.copyWith(day: lastDayOfMonth(_today).day),
    );
    final eventsOfDay =
        events.where((e) => e.date.day == selectedDate.day).toList();
    _allEvents = events;

    emitter(CalendarState.loadSuccess(
      selectedDate: _today,
      allEvents: events,
      eventsOfDay: eventsOfDay,
    ));
  }

  Future<void> _loadEventsForMonth(
    _LoadEventsForMonthCalendarEvent event,
    Emitter emitter,
  ) async {
    emitter(CalendarState.loading(selectedDate: selectedDate));
    _selectDateByFilter = false;

    final date = event.date;

    final events = await assemble.calendarCacheStorage.getEventsByDateRange(
      fromDate: date.copyWith(day: 1),
      toDate: date.copyWith(day: lastDayOfMonth(date).day),
    );

    final eventsOfDay = events
        .where((e) => date.day == e.date.day && e.date.month == date.month)
        .toList();
    _allEvents = events;
    emitter(CalendarState.loadSuccess(
      selectedDate: selectedDate,
      allEvents: events,
      eventsOfDay: eventsOfDay,
    ));
  }

  Future<void> _updateSelectedDate(
    _UpdateSelectedDateCalendarEvent event,
    Emitter emitter,
  ) async {
    emitter(CalendarState.loading(selectedDate: selectedDate));
    _selectDateByFilter = event.byFilter;
    var events = <EventModel>[];
    final date = event.date;
    if (date.month != selectedDate.month || date.year != selectedDate.year) {
      events = await assemble.calendarCacheStorage.getEventsByDateRange(
        fromDate: date.copyWith(day: 1),
        toDate: date.copyWith(day: lastDayOfMonth(date).day),
      );
    } else {
      events = _allEvents;
    }
    _allEvents = events;
    final eventsOfDay = events.where((e) => e.date.day == date.day).toList();

    emitter(CalendarState.loadSuccess(
      selectedDate: event.date,
      allEvents: List.from(events),
      eventsOfDay: List.from(eventsOfDay),
    ));
  }

  Future<void> _createOrUpdateEvent(
    _CreateOrUpdateEventCalendarEvent event,
    Emitter emitter,
  ) async {
    if (event.event.id == null) {
      final eventModel =
          await assemble.calendarCacheStorage.createEvent(event.event);
      _allEvents.add(eventModel);
    } else {
      await assemble.calendarCacheStorage.updateEvent(event.event);
      _allEvents.removeWhere((e) => e.id == event.event.id);
      _allEvents.add(event.event);
    }
    final eventsOfDay =
        _allEvents.where((e) => e.date.day == selectedDate.day).toList();

    emitter(
      CalendarState.loadSuccess(
        selectedDate: selectedDate,
        allEvents: List.from(_allEvents),
        eventsOfDay: eventsOfDay,
      ),
    );
  }

  Future<void> _deleteEvent(
    _DeleteEventCalendarEvent event,
    Emitter emitter,
  ) async {
    await assemble.calendarCacheStorage.deleteEvent(event.id);

    final eventExists = await assemble.calendarCacheStorage.getEvent(event.id);
    if (eventExists != null) {
      emitter(CalendarState.error(selectedDate: selectedDate));
    }

    _allEvents.removeWhere((e) => e.id == event.id);

    final eventsOfDay =
        _allEvents.where((e) => e.date.day == selectedDate.day).toList();

    emitter(CalendarState.loadSuccess(
      selectedDate: selectedDate,
      allEvents: _allEvents,
      eventsOfDay: eventsOfDay,
    ));
  }
}
