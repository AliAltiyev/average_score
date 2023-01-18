import 'package:average_score/constants/constants.dart';
import 'package:average_score/pages/calculate_avarage_score_page.dart';
import 'package:average_score/widgets/bottom_navigation_bar.dart';
import 'package:average_score/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'data/drop_down_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appBarText,
      theme: ThemeData(
        primarySwatch: AppConstants.mainColor,
      ),
      home: Scaffold(
          bottomNavigationBar: const ApplicationBottomNavigationBar(),
          drawer: const ApplicationDrawer(),
          body: CalculateAverageScorePage(
            lessonsList: Data.lessonsList,
          )),
    );
  }
}

