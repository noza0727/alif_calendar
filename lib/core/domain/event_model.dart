class EventModel {
  String name;
  String? description;
  String? location;
  int priority;
  DateTime time;

  EventModel({
    required this.name,
    required this.time,
    required this.priority,
    this.location,
    this.description,
  });
}
