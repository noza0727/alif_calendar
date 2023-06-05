import 'package:alif_calendar/core/db/entities/event_entity.dart';
import 'package:sqflite/sqflite.dart';

class CalendarDatabase {
  static final CalendarDatabase instance = CalendarDatabase._();

  CalendarDatabase._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initialize('alif_calendar.db');
    return _database!;
  }

  Future<Database> _initialize(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = '$dbPath/$filePath';

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const textNullType = 'TEXT';
    const integerType = 'INTEGER NOT NULL';

    await db.execute('''
      CREATE TABLE $eventTable ( 
        ${EventFields.id} $idType, 
        ${EventFields.date} $integerType, 
        ${EventFields.name} $textType,
        ${EventFields.description} $textNullType,
        ${EventFields.location} $textNullType,
        ${EventFields.priority} $integerType,
        ${EventFields.time} $textNullType
        )
      ''');
  }

  Future createEvent(EventEntity event) async {
    final db = await instance.database;

    final id = await db.insert(eventTable, event.toRawData());
    return event.copyWith(id: id);
  }

  Future<EventEntity?> readEvent(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      eventTable,
      columns: EventFields.fields,
      where: '${EventFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return EventEntity.fromRawData(maps.first);
    } else {
      return null;
    }
  }

  Future<List<EventEntity>> retrieveEventsByDateRange(
    int fromDate,
    int toDate,
  ) async {
    final db = await instance.database;

    final maps = await db.rawQuery(
      '''SELECT * FROM $eventTable WHERE ${EventFields.date} >= ? AND ${EventFields.date} <= ?''',
      [
        fromDate,
        toDate,
      ],
    );

    final events = maps.map(EventEntity.fromRawData).toList();

    return events;
  }

  Future<List<EventEntity>> retrieveAllEvents() async {
    final db = await instance.database;

    final maps = await db.rawQuery(
      '''SELECT * FROM $eventTable''',
    );

    return maps.map(EventEntity.fromRawData).toList();
  }

  Future<int> update(EventEntity event) async {
    final db = await instance.database;

    return db.update(
      eventTable,
      event.toRawData(),
      where: '${EventFields.id} = ?',
      whereArgs: [event.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      eventTable,
      where: '${EventFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
