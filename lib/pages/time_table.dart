import 'package:average_score/data/days_data.dart';
import 'package:average_score/model/time_table.dart';
import 'package:flutter/material.dart';

import 'days/monday.dart';

class TimeTableTab extends StatefulWidget {
  const TimeTableTab({Key? key}) : super(key: key);

  @override
  State<TimeTableTab> createState() => _TimeTableTabState();
}

class _TimeTableTabState extends State<TimeTableTab>
    with TickerProviderStateMixin {
  TabController? _tabController;
  var timeTableIcon = const Icon(Icons.calendar_month);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: [
            Tab(
              icon: timeTableIcon,
              text: "Понедельник",
            ),
            Tab(
              icon: timeTableIcon,
              text: "Вторник",
            ),
            Tab(
              icon: timeTableIcon,
              text: "Среда",
            ),
            Tab(
              icon: timeTableIcon,
              text: "Четверг",
            ),
            Tab(
              icon: timeTableIcon,
              text: "Пятница",
            ),
            Tab(
              icon: timeTableIcon,
              text: "Суббота",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Monday(
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.yellow,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.pink,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.pink,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
