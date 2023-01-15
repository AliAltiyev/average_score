import 'package:average_score/constants/constants.dart';
import 'package:flutter/material.dart';

class CalculateAverageScorePage extends StatefulWidget {
  const CalculateAverageScorePage({Key? key}) : super(key: key);

  @override
  State<CalculateAverageScorePage> createState() =>
      _CalculateAverageScorePageState();
}

class _CalculateAverageScorePageState extends State<CalculateAverageScorePage> {
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
      body: const Center(
        child: Text("Calculate Average score"),
      ),
    );
  }
}
