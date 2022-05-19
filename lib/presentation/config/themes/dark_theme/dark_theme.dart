import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/dark_colors.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/dark_text_styles.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  pageTransitionsTheme: transitions,
  useMaterial3: true,
  colorScheme: colors,
  scaffoldBackgroundColor: DarkColors.backgroundColor,
  appBarTheme: appBarTheme,
  cardTheme: cardTheme,
  listTileTheme: listTileTheme,
  bottomNavigationBarTheme: bottomNavigationBarThemeData,
  tabBarTheme: tabBarTheme,
  textTheme: textTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  inputDecorationTheme: inputDecorationTheme,
  iconTheme: iconTheme,
  primaryIconTheme: iconTheme,
  dialogTheme: dialogTheme,
  textSelectionTheme: textSelectionTheme,
  progressIndicatorTheme: progressIndicatorTheme,
  switchTheme: switchTheme,
  floatingActionButtonTheme: floatingActionButtonTheme,
);

PageTransitionsTheme get transitions => const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    );

ShapeBorder get shapeMedium => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    );

ColorScheme get colors => ColorScheme.fromSeed(
      seedColor: DarkColors.primaryColor,
      brightness: Brightness.dark,
      primary: DarkColors.primaryColor,
    );

TextTheme get textTheme => TextTheme(
      subtitle1: DarkTextStyles.subtitle1,
      subtitle2: DarkTextStyles.subtitle2,
      bodyText1: DarkTextStyles.bodyText1,
      bodyText2: DarkTextStyles.bodyText2,
      headline1: DarkTextStyles.headline1,
      headline2: DarkTextStyles.headline2,
      headline3: DarkTextStyles.headline3,
      headline6: DarkTextStyles.headline6,
      headline5: DarkTextStyles.headline5,
      caption: DarkTextStyles.caption,
      button: DarkTextStyles.button,
      headline4: DarkTextStyles.headline4,
      overline: DarkTextStyles.overline,
    );

BottomNavigationBarThemeData get bottomNavigationBarThemeData =>
    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: colors.surface,
      selectedItemColor: colors.primary,
      unselectedItemColor: colors.onSurface,
      elevation: 0,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    );

TabBarTheme get tabBarTheme => TabBarTheme(
      labelColor: colors.primary,
      unselectedLabelColor: colors.onSurfaceVariant,
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colors.primary,
            width: 2,
          ),
        ),
      ),
    );

AppBarTheme get appBarTheme => AppBarTheme(
      elevation: 0,
      backgroundColor: colors.surface,
      foregroundColor: colors.onSurface,
    );

CardTheme get cardTheme => CardTheme(
      elevation: 0,
      shape: shapeMedium,
      clipBehavior: Clip.antiAlias,
    );

ListTileThemeData get listTileTheme => ListTileThemeData(
      shape: shapeMedium,
      selectedColor: colors.primary,
    );

InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(color: colors.primary),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      focusColor: colors.primary,
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(
          color: colors.primary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(
          color: colors.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(
          color: colors.error,
        ),
      ),
      errorStyle: DarkTextStyles.bodyText1.copyWith(color: colors.error),
    );

TextSelectionThemeData get textSelectionTheme => TextSelectionThemeData(
      cursorColor: colors.primary,
      selectionColor: colors.primary,
      selectionHandleColor: colors.primary,
    );

ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(100, 50),
        ),
        maximumSize: MaterialStateProperty.all(
          const Size(300, 50),
        ),
        foregroundColor: MaterialStateProperty.all(
          colors.onSurface,
        ),
        textStyle: MaterialStateProperty.all(
          DarkTextStyles.subtitle1,
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return colors.surface;
            }
            return colors.primary; // Defer to the widget's default.
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    );

ProgressIndicatorThemeData get progressIndicatorTheme =>
    ProgressIndicatorThemeData(
      color: colors.primary,
    );

DialogTheme get dialogTheme => const DialogTheme();

IconThemeData get iconTheme => IconThemeData(color: colors.onSurface);

SwitchThemeData get switchTheme => SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colors.primary;
          }
        },
      ),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return colors.primaryContainer;
          }
        },
      ),
    );

FloatingActionButtonThemeData get floatingActionButtonTheme =>
    FloatingActionButtonThemeData(
      backgroundColor: colors.primary,
    );
