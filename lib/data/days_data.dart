import '../model/time_table.dart';

abstract class DaysData {

  static void addMondayLessons(TimeTable timeTable) {
    mondayLessons.add(timeTable);
  }

  static List<TimeTable> mondayLessons = [];
}
