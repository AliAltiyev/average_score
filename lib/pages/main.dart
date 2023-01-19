import 'package:average_score/pages/home.dart';
import 'package:average_score/pages/news.dart';
import 'package:average_score/pages/profile.dart';
import 'package:average_score/pages/time_table.dart';
import 'package:average_score/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../data/drop_down_data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPageIndex = 0;

  void changeNavigationBarIndex(int index) {
    if (index == _selectedPageIndex) return;
    if (_selectedPageIndex == 1) {
      MaterialPageRoute(builder: (context) => TimeTableTab());
    }
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final pages = <Widget>[
    Home(lessonsList: Data.lessonsList),
    const TimeTableTab(),
    const News(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ApplicationDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Timetable"),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_sharp), label: "News"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
        elevation: 30,
        currentIndex: _selectedPageIndex,
        onTap: changeNavigationBarIndex,
      ),
      body: IndexedStack(
        index: _selectedPageIndex,
        children: pages,
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Data.lessonsList.clear();
                });
              },
              icon: const Icon(Icons.delete))
        ],
        leading: InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Icons.menu_open_outlined)),
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
    );
  }
}
