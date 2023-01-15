import 'package:average_score/constants/constants.dart';
import 'package:average_score/widgets/lessons_count_witget.dart';
import 'package:flutter/material.dart';

class CalculateAverageScorePage extends StatefulWidget {
  const CalculateAverageScorePage({Key? key}) : super(key: key);

  @override
  State<CalculateAverageScorePage> createState() =>
      _CalculateAverageScorePageState();
}

class _CalculateAverageScorePageState extends State<CalculateAverageScorePage> {
  final formKey = GlobalKey<FormState>();

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
          Expanded(
            flex: 2,
            child: Row(
              children: [_createForm(), const Expanded(
                  flex: 1,
                  child: LessonsCountWidget(score: 10.9, lessons: 2))],
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 10,
                itemExtent: 100,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.indigo,
                    child: const Text("Score 10"),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget _createForm() {
    return Expanded(
      flex: 2,
        child: Column(
            children: [
        Form(
        key : formKey,
        child: TextFormField(
            decoration: InputDecoration(
            label: const Text("Score"),
        fillColor: AppConstants.mainColor.withOpacity(0.1),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppConstants.mainColor),
            borderRadius: BorderRadius.circular(16))),
    )),
    const Icon(Icons.access_alarm_rounded),
    const Icon(Icons.access_alarm_rounded),
    const Icon(Icons.access_alarm_rounded),
    ],
    ),
    );
  }
}
