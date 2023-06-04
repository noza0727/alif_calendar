import 'package:alif_calendar/core/dependency_injection/di_configuration.dart';
import 'package:alif_calendar/core/domain/event_model.dart';
import 'package:alif_calendar/core/utils/date_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_bloc.freezed.dart';

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
          createEvent: (_CreateEventCalendarEvent event) =>
              _createEvent(event, emitter),
        );
      },
    );
    add(const CalendarEvent.loadInitialHandler());
  }

  final DateTime _today = DateTime.now();
  late List<EventModel> _allEvents;

  DateTime get today => _today;

  DateTime get selectedDate => state.map(
        initial: (_) => _today,
        loading: (s) => s.selectedDate,
        loadSuccess: (s) => s.selectedDate,
        createEventSuccess: (s) => s.selectedDate,
      );

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
    final date = event.date;

    final events = await assemble.calendarCacheStorage.getEventsByDateRange(
      fromDate: date.copyWith(day: 1),
      toDate: date.copyWith(day: lastDayOfMonth(date).day),
    );

    final eventsOfDay = events
        .where((e) =>
            selectedDate.day == e.date.day &&
            e.date.month == selectedDate.month)
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
    emitter(CalendarState.loading(selectedDate: event.date));
    var events = <EventModel>[];
    final date = event.date;
    if (date.month != selectedDate.month) {
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
      allEvents: events,
      eventsOfDay: eventsOfDay,
    ));
  }

  Future<void> _createEvent(
    _CreateEventCalendarEvent event,
    Emitter emitter,
  ) async {
    final eventModel =
        await assemble.calendarCacheStorage.createEvent(event.event);
    _allEvents.add(eventModel);

    final eventsOfDay =
        _allEvents.where((e) => e.date.day == selectedDate.day).toList();

    emitter(
      CalendarState.createEventSuccess(
        selectedDate: selectedDate,
        allEvents: _allEvents,
        eventsOfDay: eventsOfDay,
      ),
    );
  }
}

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.loadInitialHandler() = _LoadInitialCalendarEvent;

  const factory CalendarEvent.loadEventsForMonth({required DateTime date}) =
      _LoadEventsForMonthCalendarEvent;

  const factory CalendarEvent.updateSelectedDate({required DateTime date}) =
      _UpdateSelectedDateCalendarEvent;

  const factory CalendarEvent.createEvent({required EventModel event}) =
      _CreateEventCalendarEvent;
}

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial() = _InitialCalendarState;

  const factory CalendarState.loading({required DateTime selectedDate}) =
      _LoadingCalendarState;

  const factory CalendarState.loadSuccess({
    required DateTime selectedDate,
    required List<EventModel> allEvents,
    required List<EventModel> eventsOfDay,
  }) = _LoadSuccessCalendarState;

  const factory CalendarState.createEventSuccess({
    required DateTime selectedDate,
    required List<EventModel> allEvents,
    required List<EventModel> eventsOfDay,
  }) = _CreateSuccessCalendarState;
}
