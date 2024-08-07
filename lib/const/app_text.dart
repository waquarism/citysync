import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppText{
  static Widget primaryText({
    required String text,
    double size = 18,
    Color color = Colors.black,
  }
  ){
    return Text(
      text,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: size,
          color: color,
        )
      )
    );
  }
  static Widget activityText({
    required String text,
    double size = 18,
    Color color = Colors.black,
  }
  ){
    return Text(
      text,
      style: GoogleFonts.workSans(
        textStyle: TextStyle(
          fontSize: size,
          color: color,
        )
      )
    );
  }
}