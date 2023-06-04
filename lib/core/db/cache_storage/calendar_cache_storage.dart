import 'package:alif_calendar/core/domain/event_model.dart';

/// Currently it's only for calendar database, but better to generalize
abstract class CalendarCacheStorage {
  Future<EventModel> createEvent(EventModel event);

  Future<EventModel> getEvent(int id);

  Future<List<EventModel>> getEventsByDateRange({
    required DateTime fromDate,
    required DateTime toDate,
  });

  Future<void> deleteEvent(int id);
}
