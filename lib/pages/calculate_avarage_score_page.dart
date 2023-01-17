import 'package:average_score/constants/constants.dart';
import 'package:average_score/data/drop_down_data.dart';
import 'package:flutter/material.dart';

import '../widgets/lessons_count_witget.dart';

class CalculateAverageScorePage extends StatefulWidget {
  const CalculateAverageScorePage({Key? key}) : super(key: key);

  @override
  State<CalculateAverageScorePage> createState() =>
      _CalculateAverageScorePageState();
}

class _CalculateAverageScorePageState extends State<CalculateAverageScorePage> {
  final formKey = GlobalKey<FormState>();

  String lessonNames = "Белорусский язык";
  int scoreValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: AppConstants.mainColor,
        elevation: 0,
        title: Text(
          AppConstants.appBarText,
          style: AppConstants.mainAppFont,
        ),
      ),
      body: Column(
        children: [
          const LessonsCountWidget(score: 10.9, lessons: 2),
          lessonDropDownMenu(),
          _scoreDropDownMenu()
        ],
      ),
    );
  }

  Widget lessonDropDownMenu() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppConstants.mainColor),
        child: DropdownButton<String>(
          isExpanded: true,
          underline: Container(),
          dropdownColor: AppConstants.mainColor.shade900,
          iconEnabledColor: Colors.white,
          value: lessonNames,
          elevation: 16,
          items: Data.createDropDownItem(),
          onChanged: (value) {
            setState(() {
              lessonNames = value!;
            });
          },
        ),
      ),
    );
  }

  Widget _scoreDropDownMenu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppConstants.mainColor),
        child: DropdownButton<dynamic>(
          isExpanded: true,
          underline: Container(),
          dropdownColor: AppConstants.mainColor.shade900,
          iconEnabledColor: Colors.white,
          value: scoreValue,
          elevation: 16,
          items: Data.createScoreNumbersList(),
          onChanged: (value) {
            setState(() {
              scoreValue = value!;
            });
          },
        ),
      ),
    );
  }

// checkLessonValidation() {
//   formKey.currentState?.save();
//   if (formKey.currentState!.validate()) {}
//   final lesson = Lesson(lessonName, numbervalue, lessonNames);
//
//   Data.addLessons(lesson);
//   debugPrint(lesson.toString());
// }
}
