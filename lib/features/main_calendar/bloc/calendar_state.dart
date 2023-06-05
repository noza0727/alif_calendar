part of 'calendar_bloc.dart';

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

  const factory CalendarState.error({required DateTime selectedDate}) =
      _ErrorCalendarState;
}
