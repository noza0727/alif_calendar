class EventModel {
  int? id;
  String name;
  String? description;
  String? location;
  int priority;
  String? time;
  DateTime date;

  EventModel({
    this.id,
    required this.name,
    this.time,
    required this.priority,
    required this.date,
    this.location,
    this.description,
  });

  EventModel copyWith({
    String? name,
    String? description,
    String? location,
    int? priority,
    String? time,
    DateTime? date,
  }) =>
      EventModel(
        id: id,
        name: name ?? this.name,
        description: description ?? this.description,
        location: location ?? this.location,
        time: time ?? this.time,
        priority: priority ?? this.priority,
        date: date ?? this.date,
      );
}
