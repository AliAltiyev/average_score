import 'package:average_score/constants/constants.dart';
import 'package:average_score/model/lesson.dart';
import 'package:flutter/material.dart';

class Data {
  static List<String> scoreRangeList = [
    "Белорусский язык",
    "Белорусская литература",
    "Русский язык",
    "Русская литература",
    "Иностранный язык",
    "Математика",
    "Физика",
    "Информатика",
    "Астрономия",
    "Биология",
    "Химия",
    "История Беларуси",
    "Всемирная история",
    "Обществоведение",
    "География",
    "Черчение",
    "Физическая культура",
    "Медицинская и допризывная подготовка",
    "Трудовое обучение",
  ];

  static List<DropdownMenuItem<String>> createDropDownItem() {
    return scoreRangeList
        .map((value) => DropdownMenuItem(
            value: value,
            child: Text(
              value.toString(),
              style: AppConstants.dropDownItemStyle,
            )))
        .toList();
  }

  static List<DropdownMenuItem<int>> createScoreNumbersList() {
    List<int> scoreNumbers = [];

    for (int i = 1; i <= 10; i++) {
      scoreNumbers.add(i);
    }
    return scoreNumbers
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(
                "Оценка  ${value.toString()}",
                style: AppConstants.dropDownItemStyle,
              ),
            ))
        .toList();
  }

  static List<Lesson> lessonsList = [];

  static void addLessons(Lesson lesson) {
    lessonsList.add(lesson);
  }

  static num calculateAverage() {
    num number = 0;

    if(lessonsList.isNotEmpty){
      number = lessonsList
          .map((e) => e.numberValue)
          .reduce((value, element) => element + value);
    }
    var average = number / lessonsList.length;
    return average;
  }
}
