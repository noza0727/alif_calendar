///TODO: make an annotation for SQL fields than fields class

const String eventTable = 'event';

class EventEntity {
  int? id;
  String name;
  String? description;
  String? location;
  int priority;
  String? time;
  DateTime date;

  EventEntity({
    required int? id,
    required this.name,
    required this.priority,
    required this.date,
    this.time,
    this.location,
    this.description,
  });

  EventEntity copyWith({
    int? id,
    String? name,
    String? description,
    String? location,
    int? priority,
    String? time,
    DateTime? date,
  }) =>
      EventEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        location: location ?? this.location,
        time: time ?? this.time,
        priority: priority ?? this.priority,
        date: date ?? this.date,
      );

  Map<String, Object?> toRawData() => {
        EventFields.id: id,
        EventFields.name: name,
        EventFields.description: description,
        EventFields.date: date.millisecondsSinceEpoch,
        EventFields.priority: priority,
        EventFields.time: time,
        EventFields.location: location,
      };

  static EventEntity fromRawData(Map<String, Object?> data) => EventEntity(
        id: data[EventFields.id] as int?,
        name: data[EventFields.name] as String,
        time: data[EventFields.time] as String?,
        priority: data[EventFields.priority] as int,
        date:
            DateTime.fromMillisecondsSinceEpoch(data[EventFields.date] as int),
        location: data[EventFields.location] as String?,
        description: data[EventFields.description] as String?,
      );
}

class EventFields {
  static final List<String> fields = [
    id,
    name,
    description,
    location,
    priority,
    time,
    date,
  ];

  static String id = '_id';
  static String name = 'name';
  static String description = 'description';
  static String location = 'location';
  static String priority = 'priority';
  static String time = 'time';
  static String date = 'date';
}
