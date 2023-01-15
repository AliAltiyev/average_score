import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants {
  static const MaterialColor mainColor = Colors.indigo;
  static const String appBarText = "Average Calculator";
  static final TextStyle mainAppFont =
      GoogleFonts.asapCondensed(fontSize: 23, fontWeight: FontWeight.w600,color: mainColor);

  static final TextStyle lessonsTextStyle =
  GoogleFonts.acme(fontSize: 20, fontWeight: FontWeight.w900,color: mainColor);


  static final TextStyle dropDownItemStyle =
  GoogleFonts.asap(fontSize: 16, fontWeight: FontWeight.w900,color: Colors.white);
}
