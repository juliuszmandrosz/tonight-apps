import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class DefaultTextStyles {
  DefaultTextStyles._();

  static TextStyle subtitle1 = GoogleFonts.lexendDeca(
      fontSize: 18,
      color: DefaultColors.textColor,
      fontWeight: FontWeight.w500);

  static TextStyle bodyText1 = GoogleFonts.lexendDeca(
      fontSize: 16,
      color: DefaultColors.textColor,
      fontWeight: FontWeight.w400);

  static TextStyle bodyText2 = GoogleFonts.lexendDeca(
      fontSize: 14,
      color: DefaultColors.textColor,
      fontWeight: FontWeight.w400);
}
