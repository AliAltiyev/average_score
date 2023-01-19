import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../data/days_data.dart';
import '../../data/drop_down_data.dart';
import '../../model/time_table.dart';

class Monday extends StatefulWidget {
  List<TimeTable> mondayLeesonList = DaysData.mondayLessons;
  List<Data> dropDawnData = [];
  String lessonNames = "Химия";

  Monday({Key? key}) : super(key: key);

  @override
  State<Monday> createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemExtent: 100,
              itemCount: widget.mondayLeesonList.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionTile(
                  backgroundColor: Colors.pink,
                  leading: const Icon(Icons.list),
                  trailing: const Text(
                    "GFG",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("List item $index"),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppConstants.mainColor),
            child: DropdownButton<String>(
              isExpanded: true,
              underline: Container(),
              dropdownColor: AppConstants.mainColor.shade900,
              iconEnabledColor: Colors.white,
              value: widget.lessonNames,
              elevation: 16,
              items: Data.createDropDownItem(),
              onChanged: (value) {
                setState(() {
                  widget.lessonNames = value!;
                });
              },
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              var data = TimeTable(widget.lessonNames, "12:00");
              DaysData.addMondayLessons(data);
            },
            child: Text("Сохронить"))
      ]),
    );
  }
}
