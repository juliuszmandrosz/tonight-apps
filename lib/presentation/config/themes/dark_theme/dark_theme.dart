import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/dark_theme/dark_colors.dart';
import 'package:raver/presentation/config/themes/dark_theme/dark_text_styles.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: DarkColors.backgroundColor,
    primaryColorDark: DarkColors.primaryColor,
  ),
  listTileTheme: const ListTileThemeData(),
  tabBarTheme: const TabBarTheme(
    labelColor: DarkColors.primaryColor,
    unselectedLabelColor: DarkColors.textColorLight,
  ),
  textTheme: TextTheme(
    subtitle1: DarkTextStyles.subtitle1,
    subtitle2: DarkTextStyles.subtitleImportant,
    bodyText1: DarkTextStyles.bodyText1,
    bodyText2: DarkTextStyles.bodyText2,
    headline1: DarkTextStyles.headline1,
    headline2: DarkTextStyles.headlineAccent,
    headline3: DarkTextStyles.subtitleAccent,
  ),
  iconTheme: const IconThemeData(
    color: DarkColors.primaryColor,
  ),
  primaryIconTheme: const IconThemeData(
    color: DarkColors.primaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(
        DarkColors.backgroundColor,
      ),
      textStyle: MaterialStateProperty.all(
        DarkTextStyles.subtitleAccent,
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return DarkColors.textColorLight;
        }
        return DarkColors.primaryColor; // Defer to the widget's default.
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
      textStyle: MaterialStateProperty.all(DarkTextStyles.bodyText1),
      foregroundColor: MaterialStateProperty.all(DarkColors.primaryColor),
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
    focusColor: DarkColors.primaryColor,
  ),
);
