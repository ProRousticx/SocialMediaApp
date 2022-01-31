import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_colors.dart';

class MyStyles {
  static MyStyles design = MyStyles();

  TextStyle titleText(
      {Color fontColor = Colors.blue,
      double fontSize = 22,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.inter(color: fontColor, fontSize: fontSize, fontWeight: fontWeight);
  }

  TextStyle bodyText(
      {Color fontColor = Colors.white,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.quicksand(color: fontColor, fontSize: fontSize, fontWeight: fontWeight);
  }

  TextStyle buttonText(
      {Color fontColor = Colors.white,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.oxygen(color: fontColor, fontSize: fontSize, fontWeight: fontWeight);
  }

  ButtonStyle buttonStyle() {
    return TextButton.styleFrom(
        backgroundColor: kButtonColor,
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)));
  }
}
