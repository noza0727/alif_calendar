part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.loadInitialHandler() = _LoadInitialCalendarEvent;

  const factory CalendarEvent.loadEventsForMonth({required DateTime date}) =
      _LoadEventsForMonthCalendarEvent;

  const factory CalendarEvent.updateSelectedDate({
    required DateTime date,
    required bool byFilter,
  }) = _UpdateSelectedDateCalendarEvent;

  const factory CalendarEvent.createOrUpdateEvent({required EventModel event}) =
      _CreateOrUpdateEventCalendarEvent;

  const factory CalendarEvent.deleteEvent({required int id}) =
      _DeleteEventCalendarEvent;
}
