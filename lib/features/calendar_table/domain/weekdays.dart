enum Weekdays {
  sun,
  mon,
  tue,
  wed,
  thur,
  fri,
  sat,
}

extension WeekDayExtension on Weekdays {
  String toFullName() {
    switch (this) {
      case Weekdays.sun:
        return 'Sunday';
      case Weekdays.mon:
        return 'Monday';
      case Weekdays.tue:
        return 'Tuesday';
      case Weekdays.wed:
        return 'Wednesday';
      case Weekdays.thur:
        return 'Thursday';
      case Weekdays.fri:
        return 'Friday';
      case Weekdays.sat:
        return 'Saturday';
    }
  }

  String toLabel() {
    switch (this) {
      case Weekdays.sun:
        return 'Sun';
      case Weekdays.mon:
        return 'Mon';
      case Weekdays.tue:
        return 'Tue';
      case Weekdays.wed:
        return 'Wed';
      case Weekdays.thur:
        return 'Thur';
      case Weekdays.fri:
        return 'Fri';
      case Weekdays.sat:
        return 'Sat';
    }
  }
}
