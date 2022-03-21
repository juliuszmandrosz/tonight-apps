import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raver/presentation/config/themes/dark_theme/dark_colors.dart';
import 'package:raver/presentation/config/themes/light_theme/light_colors.dart';

extension TextThemeExtension on ThemeData {
  TextStyle get onboardingTitle {
    return GoogleFonts.montserrat(
      fontSize: 24,
      color: _getTextColorBasedByTheme(),
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get onboardingSubtitle {
    return GoogleFonts.montserrat(
      fontSize: 18,
      color: _getTextColorBasedByTheme(),
      fontWeight: FontWeight.w400,
    );
  }

  _getTextColorBasedByTheme() {
    return brightness == Brightness.light
        ? LightColors.textColor
        : DarkColors.textColor;
  }
}
