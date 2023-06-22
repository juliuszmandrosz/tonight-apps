import 'package:common/theme/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTextStyles {
  DarkTextStyles._();

  static TextTheme textTheme = GoogleFonts.montserratTextTheme();

  static TextStyle titleMedium =
      textTheme.titleMedium!.copyWithOnSurfaceColorAndW400();

  static TextStyle titleSmall =
      textTheme.titleSmall!.copyWithOnSurfaceColorAndW400();

  static TextStyle bodyLarge =
      textTheme.bodyLarge!.copyWithOnSurfaceColorAndW400();

  static TextStyle bodyMedium =
      textTheme.bodyMedium!.copyWithOnSurfaceColorAndW400();

  static TextStyle displayLarge =
      textTheme.displayLarge!.copyWithOnSurfaceColorAndW400();

  static TextStyle displayMedium =
      textTheme.displayMedium!.copyWithOnSurfaceColorAndW400();

  static TextStyle displaySmall =
      textTheme.displayMedium!.copyWithOnSurfaceColorAndW400();

  static TextStyle headlineMedium =
      textTheme.headlineMedium!.copyWithOnSurfaceColorAndW400();

  static TextStyle labelLarge =
      textTheme.labelLarge!.copyWithOnSurfaceColorAndW400();

  static TextStyle bodySmall =
      textTheme.bodySmall!.copyWithOnSurfaceColorAndW400();

  static TextStyle headlineSmall =
      textTheme.headlineSmall!.copyWithOnSurfaceColorAndW400();

  static TextStyle titleLarge =
      textTheme.titleLarge!.copyWithOnSurfaceColorAndW400();

  static TextStyle labelSmall =
      textTheme.labelSmall!.copyWithOnSurfaceColorAndW400();
}

extension TextStylex on TextStyle {
  TextStyle copyWithOnSurfaceColorAndW400() {
    return copyWith(
      color: colors.onSurface,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle copyWithPrimaryColor() {
    return copyWith(color: colors.primary);
  }

  TextStyle copyWithSecondaryColor() {
    return copyWith(color: colors.secondary);
  }
}
