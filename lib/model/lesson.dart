class Lesson {
  String  lessonName;
  double numberValue;
  String lessonNames;

  Lesson(this.lessonName, this.numberValue, this.lessonNames);

  @override
  String toString() {
    return 'Lesson{alphabitValue: $lessonName, numberValue: $numberValue, lessonName: $lessonNames}';
  }
}
