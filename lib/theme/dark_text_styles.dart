import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver_common/theme/dark_theme.dart';

class DarkTextStyles {
  DarkTextStyles._();

  static TextTheme textTheme = GoogleFonts.montserratTextTheme();

  static TextStyle subtitle1 = textTheme.subtitle1!.copyWithOnSurfaceColorAndW400();

  static TextStyle subtitle2 = textTheme.subtitle2!.copyWithOnSurfaceColorAndW400();

  static TextStyle bodyText1 = textTheme.bodyText1!.copyWithOnSurfaceColorAndW400();

  static TextStyle bodyText2 = textTheme.bodyText2!.copyWithOnSurfaceColorAndW400();

  static TextStyle headline1 = textTheme.headline1!.copyWithOnSurfaceColorAndW400();

  static TextStyle headline2 = textTheme.headline2!.copyWithOnSurfaceColorAndW400();

  static TextStyle headline3 = textTheme.headline2!.copyWithOnSurfaceColorAndW400();

  static TextStyle headline4 = textTheme.headline4!.copyWithOnSurfaceColorAndW400();

  static TextStyle button = textTheme.button!.copyWithOnSurfaceColorAndW400();

  static TextStyle caption = textTheme.caption!.copyWithOnSurfaceColorAndW400();

  static TextStyle headline5 = textTheme.headline5!.copyWithOnSurfaceColorAndW400();

  static TextStyle headline6 = textTheme.headline6!.copyWithOnSurfaceColorAndW400();

  static TextStyle overline = textTheme.overline!.copyWithOnSurfaceColorAndW400();
}

extension TextStylex on TextStyle {
  copyWithOnSurfaceColorAndW400() {
    return copyWith(
      color: colors.onSurface,
      fontWeight: FontWeight.w400,
    );
  }
}
