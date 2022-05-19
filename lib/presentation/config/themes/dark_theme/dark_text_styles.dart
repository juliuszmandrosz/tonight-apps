import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/dark_theme.dart';

class DarkTextStyles {
  DarkTextStyles._();

  static TextTheme textTheme = GoogleFonts.montserratTextTheme();

  static TextStyle subtitle1 = textTheme.subtitle1!.copyWithOnSurfaceColor();

  static TextStyle subtitle2 = textTheme.subtitle2!.copyWithOnSurfaceColor();

  static TextStyle bodyText1 = textTheme.bodyText1!.copyWithOnSurfaceColor();

  static TextStyle bodyText2 = textTheme.bodyText2!.copyWithOnSurfaceColor();

  static TextStyle headline1 = textTheme.headline1!.copyWithOnSurfaceColor();

  static TextStyle headline2 = textTheme.headline2!.copyWithOnSurfaceColor();

  static TextStyle headline3 = textTheme.headline2!.copyWithOnSurfaceColor();

  static TextStyle headline4 = textTheme.headline4!.copyWithOnSurfaceColor();

  static TextStyle button = textTheme.button!.copyWithOnSurfaceColor();

  static TextStyle caption = textTheme.caption!.copyWithOnSurfaceColor();

  static TextStyle headline5 = textTheme.headline5!.copyWithOnSurfaceColor();

  static TextStyle headline6 = textTheme.headline6!.copyWithOnSurfaceColor();

  static TextStyle overline = textTheme.overline!.copyWithOnSurfaceColor();
}

extension TextStylex on TextStyle {
  copyWithOnSurfaceColor() {
    return copyWith(color: colors.onSurface);
  }
}
