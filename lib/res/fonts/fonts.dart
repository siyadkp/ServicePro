import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KFonts {
  static poppins(
          {required double fontSize,
          FontWeight fontWeight = FontWeight.normal,
          Color color = Colors.black}) =>
      GoogleFonts.poppins(
          fontSize: fontSize, fontWeight: fontWeight, color: color);
}
