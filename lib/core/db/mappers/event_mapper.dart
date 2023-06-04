import 'package:alif_calendar/core/db/entities/event_entity.dart';
import 'package:alif_calendar/core/db/mappers/mapper.dart';
import 'package:alif_calendar/core/domain/event_model.dart';

class EventModelFromEntityMapper implements Mapper<EventEntity, EventModel> {
  @override
  EventModel map(EventEntity data) => EventModel(
        id: data.id,
        name: data.name,
        time: data.time,
        priority: data.priority,
        date: data.date,
        description: data.description,
        location: data.location,
      );
}

class EventModelToEntityMapper implements Mapper<EventModel, EventEntity> {
  @override
  EventEntity map(EventModel data) => EventEntity(
        id: data.id,
        name: data.name,
        time: data.time,
        priority: data.priority,
        date: data.date,
        description: data.description,
        location: data.location,
      );
}
