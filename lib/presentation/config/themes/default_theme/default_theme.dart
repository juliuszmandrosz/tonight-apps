import 'package:flutter/material.dart';

import 'default_colors.dart';

ThemeData get defaultTheme =>
    ThemeData(
        backgroundColor: DefaultColors.backgroundColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedItemColor: DefaultColors.navbarUnselectedColor,
          selectedItemColor: DefaultColors.primaryColor,
        ),
      tabBarTheme: const TabBarTheme(
        labelColor: DefaultColors.primaryColor
      )
    );
