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
        bodyText1: DefaultTextStyles.bodyText1,
        bodyText2: DefaultTextStyles.bodyText2,
      ),
    );
