import 'package:average_score/constants/constants.dart';
import 'package:average_score/pages/main.dart';
import 'package:flutter/material.dart';

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
        home:  const Scaffold(
          body: MainScreen(),

        ));
  }
}

