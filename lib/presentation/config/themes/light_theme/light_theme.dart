import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/config/themes/light_theme/light_colors.dart';
import 'package:raver_partners/presentation/config/themes/light_theme/light_text_styles.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  listTileTheme: const ListTileThemeData(),
  tabBarTheme: const TabBarTheme(
    labelColor: LightColors.primaryColor,
    unselectedLabelColor: LightColors.textColorLight,
  ),
  textTheme: TextTheme(
    subtitle1: LightTextStyles.subtitle1,
    subtitle2: LightTextStyles.subtitleAccent,
    bodyText1: LightTextStyles.bodyText1,
    headline1: LightTextStyles.headline1,
    headline2: LightTextStyles.titleMedium,
  ),
  iconTheme: const IconThemeData(
    color: LightColors.primaryColor,
  ),
  primaryIconTheme: const IconThemeData(
    color: LightColors.primaryColor,
  ),
);
