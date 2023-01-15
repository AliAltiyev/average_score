import 'package:average_score/constants/constants.dart';
import 'package:flutter/material.dart';

class LessonsCountWidget extends StatelessWidget {

  final double score;
  final int lessons;

  const LessonsCountWidget(
      {Key? key, required this.score, required this.lessons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(lessons > 0 ? "Lessons $lessons" : " ${0} Lesson",
            style: AppConstants.lessonsTextStyle),
        Text(score > 0 ? "Score $score" : "Enter Score",
          style: AppConstants.mainAppFont,),
        const Text("Average"),
      ],
    );
  }
}
