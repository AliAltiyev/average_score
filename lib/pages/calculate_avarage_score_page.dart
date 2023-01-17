import 'package:average_score/constants/constants.dart';
import 'package:average_score/data/drop_down_data.dart';
import 'package:average_score/model/lesson.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LessonsCountWidget(score: 10.9, lessons: 2),
            lessonDropDownMenu(),
            _scoreDropDownMenu(),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  saveScore();
                },
                child: Text("Сохранить")),
            SizedBox(height: 40,),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemExtent: 80,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          tileColor: setScoreColor(
                              Data.lessonsList[index].numberValue) ,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          contentPadding: EdgeInsets.symmetric(horizontal: 24),
                          title: Text(Data.lessonsList[index].lessonName,style: TextStyle(color: Colors.white),),
                          leading: Text(
                            Data.lessonsList[index].numberValue.toString(),
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,

                          ),
                        ),
                      ));
                    },
                    itemCount: Data.lessonsList.length,
                  ),
                ),
              ),
            )
          ],
        ),
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

  void saveScore() {
    final lesson = Lesson(lessonNames, scoreValue);
    Data.addLessons(lesson);
  }

  Color setScoreColor(int score) {
    switch (score) {
      case 1:
        return Colors.red.shade900;
      case 2:
        return Colors.red.shade600;

      case 3:
        return Colors.red.shade400;
      case 4:
        return Colors.deepPurple;
      case 5:
        return Colors.deepPurple.shade700;
      case 6:
        return Colors.deepPurple.shade900;

      case 7:
        return Colors.lightGreenAccent;
      case 8:
        return Colors.lightGreen;
      case 9:
        return Colors.green;
      case 10:
        return Colors.green.shade900;
    }
    return Colors.black;
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
