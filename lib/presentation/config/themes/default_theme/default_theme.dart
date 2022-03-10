import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/default_theme/default_text_styles.dart';

import 'default_colors.dart';

ThemeData get defaultTheme => ThemeData(
      backgroundColor: DefaultColors.backgroundColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: DefaultColors.navbarUnselectedColor,
        selectedItemColor: DefaultColors.primaryColor,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: DefaultColors.primaryColor,
      ),
      textTheme: TextTheme(
        subtitle1: DefaultTextStyles.subtitle1,
        subtitle2: DefaultTextStyles.subtitleImportant,
        bodyText1: DefaultTextStyles.bodyText1,
        bodyText2: DefaultTextStyles.bodyText2,
        headline1: DefaultTextStyles.headline1,
        headline2: DefaultTextStyles.headlineAccent,
        headline3: DefaultTextStyles.subtitleAccent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle:
              MaterialStateProperty.all(DefaultTextStyles.subtitleAccent),
          backgroundColor:
              MaterialStateProperty.all(DefaultColors.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
    );
