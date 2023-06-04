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
}
