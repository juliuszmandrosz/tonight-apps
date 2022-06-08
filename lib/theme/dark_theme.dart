import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  pageTransitionsTheme: transitions,
  useMaterial3: true,
  colorScheme: colors,
  scaffoldBackgroundColor: colors.background,
  appBarTheme: appBarTheme,
  cardTheme: cardTheme,
  listTileTheme: listTileTheme,
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
  dividerTheme: dividerTheme,
  navigationBarTheme: navigationBarTheme,
  outlinedButtonTheme: outlineButtonTheme,
  sliderTheme: sliderTheme,
);

PageTransitionsTheme get transitions => const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    );

ShapeBorder get shapeMedium => RoundedRectangleBorder(
      borderRadius: borderRadiusShapeMedium,
    );

BorderRadius get borderRadiusShapeMedium => BorderRadius.circular(8);

ColorScheme get colors => ColorScheme.fromSeed(
      seedColor: DarkColors.primaryColor,
      brightness: Brightness.dark,
      primary: DarkColors.primaryColor,
      background: DarkColors.backgroundColor,
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

NavigationBarThemeData get navigationBarTheme => NavigationBarThemeData(
      backgroundColor: colors.surface,
      elevation: 0,
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
        borderRadius: borderRadiusShapeMedium,
        borderSide: BorderSide(color: colors.primary),
      ),
      focusColor: colors.primary,
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadiusShapeMedium,
        borderSide: BorderSide(
          color: colors.primary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: borderRadiusShapeMedium,
        borderSide: BorderSide(
          color: colors.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: borderRadiusShapeMedium,
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

OutlinedButtonThemeData get outlineButtonTheme => OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return colors.surface.lighten(0.2);
            }
            return colors.onSurface; // Defer to the widget's default.
          },
        ),
        side: MaterialStateProperty.resolveWith<BorderSide?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(
                color: colors.surface.lighten(),
                width: 2,
              );
            }
            return BorderSide(
              color: colors.outline.darken(0.3),
              width: 2,
            );
          },
        ),
      ),
    );

ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          colors.onSurface,
        ),
        overlayColor: MaterialStateProperty.all(
          colors.secondary,
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return colors.surface;
            }
            return colors.primary; // Defer to the widget's default.
          },
        ),
      ),
    );

ProgressIndicatorThemeData get progressIndicatorTheme =>
    ProgressIndicatorThemeData(
      color: colors.primary,
    );

DialogTheme get dialogTheme => DialogTheme(
      backgroundColor: colors.surface,
    );

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

DividerThemeData get dividerTheme => const DividerThemeData(thickness: 2);

SliderThemeData get sliderTheme => SliderThemeData(
      overlayShape: SliderComponentShape.noOverlay,
    );
