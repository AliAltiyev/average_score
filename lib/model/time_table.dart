class TimeTable {
  String lessonName;
  String time;

  TimeTable(this.lessonName, this.time);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeTable &&
          runtimeType == other.runtimeType &&
          lessonName == other.lessonName &&
          time == other.time;

  @override
  int get hashCode => lessonName.hashCode ^ time.hashCode;

  @override
  String toString() {
    return 'TimeTable{lessonName: $lessonName, time: $time}';
  }
}
