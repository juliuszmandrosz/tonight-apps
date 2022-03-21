import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dark_colors.dart';

class DarkTextStyles {
  DarkTextStyles._();

  static TextStyle titleMedium = GoogleFonts.montserrat(
      fontSize: 22, color: DarkColors.textColor, fontWeight: FontWeight.bold);

  static TextStyle subtitle1 = GoogleFonts.montserrat(
    fontSize: 18,
    color: DarkColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subtitleAccent = GoogleFonts.montserrat(
    fontSize: 18,
    color: DarkColors.backgroundColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headlineAccent = GoogleFonts.montserrat(
    fontSize: 20,
    color: DarkColors.backgroundColor,
    fontWeight: FontWeight.w700,
  );

  static TextStyle subtitleImportant = GoogleFonts.montserrat(
    fontSize: 18,
    color: DarkColors.secondaryColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headline1 = GoogleFonts.montserrat(
    fontSize: 24,
    color: DarkColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText1 = GoogleFonts.montserrat(
    fontSize: 16,
    color: DarkColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyText2 = GoogleFonts.montserrat(
    fontSize: 14,
    color: DarkColors.textColor,
    fontWeight: FontWeight.w400,
  );
}
