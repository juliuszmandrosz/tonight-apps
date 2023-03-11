import 'package:flutter/material.dart';

extension TypographyExtensions on BuildContext {
  TextStyle get subtitle1 => Theme.of(this).textTheme.subtitle1!;

  TextStyle get subtitle2 => Theme.of(this).textTheme.subtitle2!;

  TextStyle get bodyText1 => Theme.of(this).textTheme.bodyText1!;

  TextStyle get bodyText2 => Theme.of(this).textTheme.bodyText2!;

  TextStyle get headline1 => Theme.of(this).textTheme.headline1!;

  TextStyle get headline2 => Theme.of(this).textTheme.headline2!;

  TextStyle get headline3 => Theme.of(this).textTheme.headline3!;

  TextStyle get headline6 => Theme.of(this).textTheme.headline6!;

  TextStyle get headline5 => Theme.of(this).textTheme.headline5!;

  TextStyle get caption => Theme.of(this).textTheme.caption!;

  TextStyle get button => Theme.of(this).textTheme.button!;

  TextStyle get headline4 => Theme.of(this).textTheme.headline4!;

  TextStyle get overline => Theme.of(this).textTheme.overline!;
}
