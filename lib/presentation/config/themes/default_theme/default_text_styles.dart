import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class DefaultTextStyles {
  DefaultTextStyles._();

  static TextStyle titleMedium = GoogleFonts.lexendDeca(
      fontSize: 22,
      color: DefaultColors.textColor,
      fontWeight: FontWeight.bold);

  static TextStyle subtitle1 = GoogleFonts.lexendDeca(
    fontSize: 18,
    color: DefaultColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subtitleAccent = GoogleFonts.lexendDeca(
    fontSize: 18,
    color: DefaultColors.backgroundColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headlineAccent = GoogleFonts.lexendDeca(
    fontSize: 20,
    color: DefaultColors.backgroundColor,
    fontWeight: FontWeight.w700,
  );

  static TextStyle subtitleImportant = GoogleFonts.lexendDeca(
    fontSize: 18,
    color: DefaultColors.secondaryColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headline1 = GoogleFonts.lexendDeca(
    fontSize: 24,
    color: DefaultColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText1 = GoogleFonts.lexendDeca(
    fontSize: 16,
    color: DefaultColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyText2 = GoogleFonts.lexendDeca(
    fontSize: 14,
    color: DefaultColors.textColor,
    fontWeight: FontWeight.w400,
  );
}
