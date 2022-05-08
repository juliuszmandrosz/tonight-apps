import 'package:flutter/material.dart';
import 'package:raver_scanner/presentation/themes/light_theme/light_colors.dart';
import 'package:raver_scanner/presentation/themes/light_theme/light_text_styles.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: LightColors.primaryColor,
  backgroundColor: LightColors.backgroundColor,
  appBarTheme: AppBarTheme(
    titleTextStyle: LightTextStyles.headlineAccent,
    backgroundColor: LightColors.primaryColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: LightColors.primaryColor,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: LightColors.primaryColor,
    secondary: LightColors.secondaryColor,
    outline: LightColors.textColorLight,
    background: LightColors.backgroundColor,
    tertiaryContainer: LightColors.tertiaryContainer,
    onTertiaryContainer: LightColors.onTertiaryContainer,
  ),
  listTileTheme: const ListTileThemeData(),
  tabBarTheme: const TabBarTheme(
    labelColor: LightColors.primaryColor,
    unselectedLabelColor: LightColors.textColorLight,
  ),
  textTheme: TextTheme(
    subtitle1: LightTextStyles.subtitle1,
    subtitle2: LightTextStyles.subtitleAccent,
    bodyText1: LightTextStyles.bodyTextAccent,
    bodyText2: LightTextStyles.bodyText,
    headline1: LightTextStyles.headline1,
    headline2: LightTextStyles.titleMedium,
    headline3: LightTextStyles.headlineAccent,
  ),
  iconTheme: const IconThemeData(
    color: LightColors.primaryColor,
  ),
  primaryIconTheme: const IconThemeData(
    color: LightColors.primaryColor,
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
      textStyle: MaterialStateProperty.all(
        LightTextStyles.subtitleAccent,
      ),
    ),
  ),
  disabledColor: LightColors.textColorLight,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: LightColors.primaryColor,
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    titleTextStyle: LightTextStyles.subtitle1,
    elevation: 5,
    backgroundColor: LightColors.tertiaryContainer,
  ),
);
