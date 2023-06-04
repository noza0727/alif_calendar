import 'package:alif_calendar/core/db/cache_storage/calendar_cache_storage.dart';
import 'package:alif_calendar/core/db/mappers/event_mapper.dart';
import 'package:alif_calendar/core/db/sqlite_db.dart';
import 'package:alif_calendar/core/domain/event_model.dart';

class CalendarCacheStorageImpl implements CalendarCacheStorage {
  CalendarCacheStorageImpl({required CalendarDatabase calendarDatabase})
      : _database = calendarDatabase;

  final CalendarDatabase _database;

  @override
  Future<EventModel> createEvent(EventModel event) async {
    final eventEntity =
        await _database.createEvent(EventModelToEntityMapper().map(event));

    return EventModelFromEntityMapper().map(eventEntity);
  }

  @override
  Future<EventModel> getEvent(int id) async {
    final eventEntity = await _database.readEvent(id);
    return EventModelFromEntityMapper().map(eventEntity);
  }

  @override
  Future<List<EventModel>> getEventsByDateRange({
    required DateTime fromDate,
    required DateTime toDate,
  }) async {
    final eventEntities = await _database.retrieveEventsByDateRange(
      fromDate.millisecondsSinceEpoch,
      toDate.millisecondsSinceEpoch,
    );

    return eventEntities.map(EventModelFromEntityMapper().map).toList();
  }

  @override
  Future<void> deleteEvent(int id) async {
    await _database.delete(id);
  }
}
