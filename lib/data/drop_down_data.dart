import 'package:average_score/constants/constants.dart';
import 'package:flutter/material.dart';

class DropDownData {
  static List<String> scoreRangeList = [
    "AA",
    "BA",
    "BB",
    "CB",
    "CC",
    "DC",
    "DD",
    "FD",
    "FF",
    "GF",
    "GG",
    "HG",
    "HH"
  ];

  static List<DropdownMenuItem<double>> createScoreNumbersList() {
    List<double> scoreNumbers = [];

    for (double i = 4; i <= 10; i = i + 0.5) {
      scoreNumbers.add(i);
    }
    return scoreNumbers
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(
                value.toString(),
                style: AppConstants.dropDownItemStyle,
              ),
            ))
        .toList();
  }

  static double convertScoresToNumber(String scores) {
    switch (scores) {
      case "AA":
        return 10;
      case "BA":
        return 9.5;
      case "BB":
        return 9;
      case "CB":
        return 8.5;
      case "CC":
        return 8;
      case "DC":
        return 7.5;
      case "DD":
        return 7;
      case "FD":
        return 6.5;
      case "FF":
        return 6;
      case "GF":
        return 5.5;
      case "GG":
        return 5;
      case "HG":
        return 4.5;
      case "HH":
        return 4;
    }
    return 1;
  }

  static List<DropdownMenuItem<double>> createDropDownItem() {
    return scoreRangeList
        .map((value) => DropdownMenuItem(
            value: convertScoresToNumber(value), child: Text(value.toString(),style: AppConstants.dropDownItemStyle,)))
        .toList();
  }
}
