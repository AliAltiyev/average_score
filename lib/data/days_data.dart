import '../model/time_table.dart';

abstract class DaysData {
  static List<TimeTable> mondayLessons = [];

  static List<TimeTable> addMondayLessons(TimeTable timeTable) {
    mondayLessons.add(timeTable);
    return mondayLessons;
  }
}
