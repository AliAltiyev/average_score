import 'package:average_score/constants/constants.dart';
import 'package:average_score/pages/calculate_avarage_score_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppConstants.appBarText,
        theme: ThemeData(
          primarySwatch: AppConstants.mainColor,
        ),
        home: const CalculateAverageScorePage());
  }
}

