import 'package:alif_calendar/features/calendar_table/domain/weekdays.dart';
import 'package:intl/intl.dart';

DateTime normalizeDate(DateTime date) {
  return DateTime.utc(date.year, date.month, date.day);
}

Weekdays firstWeekdayOfMonth(DateTime date) {
  final weekday = DateTime.utc(date.year, date.month, 1).weekday;
  return getWeekDayByIndex(weekday);
}

Weekdays getWeekDayByIndex(int index) {
  switch (index) {
    case 1:
      return Weekdays.mon;
    case 2:
      return Weekdays.tue;
    case 3:
      return Weekdays.wed;
    case 4:
      return Weekdays.thur;
    case 5:
      return Weekdays.fri;
    case 6:
      return Weekdays.sat;
    case 7:
      return Weekdays.sun;
    default:
      return Weekdays.mon;
  }
}

DateTime lastDayOfMonth(DateTime dateTime) {
  final date = dateTime.month < 12
      ? DateTime.utc(dateTime.year, dateTime.month + 1, 1)
      : DateTime.utc(dateTime.year + 1, 1, 1);
  return date.subtract(const Duration(days: 1));
}

bool isSameDay(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;

String getMonthName(DateTime dateTime) {
  final formatter = DateFormat('MMMM');
  return formatter.format(dateTime);
}
