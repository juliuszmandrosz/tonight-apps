import 'package:flutter/material.dart';

import 'light_colors.dart';
import 'light_text_styles.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: LightColors.backgroundColor,
  ),
  backgroundColor: LightColors.backgroundColor,
  primaryColor: LightColors.primaryColor,
  listTileTheme: const ListTileThemeData(),
  tabBarTheme: const TabBarTheme(
    labelColor: LightColors.primaryColor,
    unselectedLabelColor: LightColors.textColorLight,
  ),
  textTheme: TextTheme(
    subtitle1: LightTextStyles.subtitle1,
    subtitle2: LightTextStyles.subtitleImportant,
    bodyText1: LightTextStyles.bodyText1,
    bodyText2: LightTextStyles.bodyText2,
    headline1: LightTextStyles.headline1,
    headline2: LightTextStyles.headline2,
    headline3: LightTextStyles.subtitleAccent,
  ),
  iconTheme: const IconThemeData(
    color: LightColors.primaryColor,
  ),
  primaryIconTheme: const IconThemeData(
    color: LightColors.primaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(
        LightColors.backgroundColor,
      ),
      textStyle: MaterialStateProperty.all(
        LightTextStyles.subtitleAccent,
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return LightColors.textColorLight;
        }
        return LightColors.primaryColor; // Defer to the widget's default.
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(LightTextStyles.bodyText1),
      foregroundColor: MaterialStateProperty.all(LightColors.primaryColor),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 20,
    ),
    focusColor: LightColors.primaryColor,
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    titleTextStyle: LightTextStyles.subtitle1,
    elevation: 5,
    backgroundColor: LightColors.backgroundColor,
  ),
);
