
import 'package:average_score/constants/constants.dart';
import 'package:average_score/pages/calculate_avarage_score_page.dart';
import 'package:average_score/widgets/drawer.dart';
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
      home: Scaffold(
          appBar: AppBar(
            leadingWidth: 40,
            leading: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const CircleAvatar(
                radius: 16,
                backgroundImage:
                    NetworkImage("https://pixy.org/src/10/109515.jpg"),
              ),
            ),
            iconTheme: const IconThemeData(color: Colors.indigo),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: AppConstants.mainColor,
            elevation: 0,
            title: Text(
              AppConstants.appBarText,
              style: AppConstants.mainAppFont,
            ),
          ),
          drawer: const ApplicationDrawer(),
          body: const CalculateAverageScorePage()),
    );
  }
}

