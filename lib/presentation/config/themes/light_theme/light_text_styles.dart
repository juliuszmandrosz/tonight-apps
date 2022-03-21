import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'light_colors.dart';

class LightTextStyles {
  LightTextStyles._();

  static TextStyle titleMedium = GoogleFonts.montserrat(
      fontSize: 22, color: LightColors.textColor, fontWeight: FontWeight.bold);

  static TextStyle subtitle1 = GoogleFonts.montserrat(
    fontSize: 18,
    color: LightColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subtitleAccent = GoogleFonts.montserrat(
    fontSize: 18,
    color: LightColors.backgroundColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headline2 = GoogleFonts.montserrat(
    fontSize: 20,
    color: LightColors.textColor,
    fontWeight: FontWeight.w300,
  );

  static TextStyle subtitleImportant = GoogleFonts.montserrat(
    fontSize: 18,
    color: LightColors.secondaryColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headline1 = GoogleFonts.montserrat(
    fontSize: 24,
    color: LightColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText1 = GoogleFonts.montserrat(
    fontSize: 16,
    color: LightColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyText2 = GoogleFonts.montserrat(
    fontSize: 14,
    color: LightColors.textColor,
    fontWeight: FontWeight.w400,
  );
}
