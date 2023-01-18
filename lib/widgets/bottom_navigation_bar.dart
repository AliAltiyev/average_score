import 'package:flutter/material.dart';

class ApplicationBottomNavigationBar extends StatefulWidget {
  const ApplicationBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<ApplicationBottomNavigationBar> createState() =>
      _ApplicationBottomNavigationBarState();
}

class _ApplicationBottomNavigationBarState
    extends State<ApplicationBottomNavigationBar> {
  var bottomNavState = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomNavState,
        onTap: (index) {
          setState(() {
            bottomNavState = index;
          });
        },
        fixedColor: Colors.indigo,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Timetable"),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_sharp), label: "News"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ]);
  }
}
