import 'package:flutter/material.dart';

class CalendarProvider extends ChangeNotifier {
  DateTime _selectedDate = DateTime.now();

  DateTime get selectedDate => _selectedDate;

  void selectDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();
  }

  List<DateTime> get currentWeek {
    DateTime today = DateTime.now();
    int currentWeekday = today.weekday; // Monday = 1
    DateTime startOfWeek = today.subtract(Duration(days: currentWeekday - 1));

    return List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
  }
}
