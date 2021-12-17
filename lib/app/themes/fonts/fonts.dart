import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontApp {
  static TextStyle subheading = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w600,
    color: ColorApp.blackColor,
    fontSize: 16,
  );
  static TextStyle bodyRegular1 = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w400,
    color: ColorApp.blackColor,
  );
  static TextStyle bodyRegular2 = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w400,
    color: ColorApp.mainColor,
  );
  static TextStyle bodyMedium1 = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w600,
    color: ColorApp.blackColor,
  );
  static TextStyle caption = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w400,
    color: ColorApp.greyColor2,
  );
  static TextStyle iconText = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w600,
    color: ColorApp.blackColor,
    fontSize: 10,
  );
}
