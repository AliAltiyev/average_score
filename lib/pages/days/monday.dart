import 'dart:math';

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../data/days_data.dart';
import '../../data/drop_down_data.dart';
import '../../model/time_table.dart';

class Monday extends StatefulWidget {
  Monday({Key? key}) : super(key: key);

  @override
  State<Monday> createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  List<Data> dropDawnData = [];
  String lessonNames = "Химия";
  List<TimeTable> mondayLessonList = DaysData.mondayLessons;
  var checkBoxState = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: [

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
            value: lessonNames,
            elevation: 16,
            items: Data.createDropDownItem(),
            onChanged: (value) {
              setState(() {
                lessonNames = value!;
              });
            },
          ),
        ),
      ),
      ElevatedButton(
          onPressed: () {
            setState(() {
              var data = TimeTable(lessonNames, "12:00");
              DaysData.addMondayLessons(data);
            });
          },
          child: const Text("Сохронить")),
      Expanded(
        child: ListView.builder(
          key: Key(Random().nextInt(200).toString()),
          shrinkWrap: true,
          itemExtent: 80,
          itemCount: mondayLessonList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      tileColor:checkBoxState ? Colors.green  : Colors.red,
                      leading: const Icon(Icons.timer,color: Colors.white,),
                      subtitle: Text(
                        mondayLessonList[index].time,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 15),
                      ),
                      trailing: Checkbox(value: checkBoxState,onChanged: (value) {
                       setState(() {
                         checkBoxState = value!;
                       });
                      },),
                      title: Text(
                        mondayLessonList[index].lessonName,style: TextStyle(color : Colors.white,fontSize: 20),
                      ),
                    )));
          },
        ),
      ),
    ]);
  }
}
