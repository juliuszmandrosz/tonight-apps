import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver_partners/presentation/config/themes/light_theme/light_colors.dart';

class LightTextStyles {
  LightTextStyles._();

  static TextStyle subtitle1 = GoogleFonts.lexendDeca(
    fontSize: 18,
    color: LightColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subtitleAccent = GoogleFonts.lexendDeca(
    fontSize: 18,
    color: LightColors.primaryColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText = GoogleFonts.lexendDeca(
    fontSize: 16,
    color: LightColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyTextAccent = GoogleFonts.lexendDeca(
    fontSize: 16,
    color: LightColors.backgroundColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headline1 = GoogleFonts.lexendDeca(
    fontSize: 24,
    color: LightColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headlineAccent = GoogleFonts.lexendDeca(
    fontSize: 24,
    color: LightColors.backgroundColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleMedium = GoogleFonts.lexendDeca(
    fontSize: 22,
    color: LightColors.textColor,
    fontWeight: FontWeight.w500,
  );
}
