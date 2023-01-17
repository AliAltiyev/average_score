import 'package:average_score/constants/constants.dart';
import 'package:flutter/material.dart';

class LessonsCountWidget extends StatelessWidget {

  final double score;
  final int lessons;

  const LessonsCountWidget(
      {Key? key, required this.score, required this.lessons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(lessons > 0 ? "Lessons $lessons" : " ${0} Lesson",
                style: AppConstants.lessonsTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              score > 0 ? "Score $score" : "Enter Score",
              style: AppConstants.mainAppFont,
            ),
          ),
          const Text("Average"),
        ],
      ),
    );
  }
}
