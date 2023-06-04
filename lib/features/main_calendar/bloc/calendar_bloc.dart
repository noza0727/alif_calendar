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
        );
      },
    );
    add(const CalendarEvent.loadInitialHandler());
  }

  final DateTime _today = DateTime.now();

  DateTime get today => _today;

  DateTime get selectedDate => state.map(
        initial: (_) => _today,
        loading: (s) => s.selectedDate,
        loadSuccess: (s) => s.selectedDate,
      );

  Future<void> _loadInitialHandler(
    _LoadInitialCalendarEvent event,
    Emitter emitter,
  ) async {
    emitter(CalendarState.loadSuccess(selectedDate: _today));
  }

  Future<void> _loadEventsForMonth(
    _LoadEventsForMonthCalendarEvent event,
    Emitter emitter,
  ) async {}

  Future<void> _updateSelectedDate(
    _UpdateSelectedDateCalendarEvent event,
    Emitter emitter,
  ) async {
    emitter(CalendarState.loadSuccess(selectedDate: event.date));
  }
}

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.loadInitialHandler() = _LoadInitialCalendarEvent;

  const factory CalendarEvent.loadEventsForMonth({required DateTime date}) =
      _LoadEventsForMonthCalendarEvent;

  const factory CalendarEvent.updateSelectedDate({required DateTime date}) =
      _UpdateSelectedDateCalendarEvent;
}

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial() = _InitialCalendarState;

  const factory CalendarState.loading({required DateTime selectedDate}) =
      _LoadingCalendarState;

  const factory CalendarState.loadSuccess({required DateTime selectedDate}) =
      _LoadSuccessCalendarState;
}
