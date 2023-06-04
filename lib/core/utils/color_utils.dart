import 'package:flutter/material.dart';

const List<int> priorityIndexes = [1, 2, 3];

Color priorityColor(int priority) {
  switch (priority) {
    case 1:
      return const Color(0xFF009FEE);
    case 2:
      return const Color(0xFFEE2B00);
    case 3:
      return const Color(0xFFEE8F00);
    default:
      return const Color(0xFF009FEE);
  }
}

Color priorityColorDark(int priority) {
  switch (priority) {
    case 1:
      return const Color(0xFF056EA1);
    case 2:
      return const Color(0xFFBF2200);
    case 3:
      return const Color(0xFFB86E00);
    default:
      return const Color(0xFF056EA1);
  }
}
