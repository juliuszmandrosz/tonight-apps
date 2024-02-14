import 'package:flutter/material.dart';

extension ColorUtils on Color {
  darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}

extension MedalColors on Color {
  static const gold = Color(0xFFD4AF37);
  static const silver = Color(0xFFC0C0C0);
  static const bronze = Color(0xFFCD7F32);
  static const goldHighlight = Color(0xFFF6E58F);
  static const silverHighlight = Color(0xFFE8E8E8);
  static const bronzeHighlight = Color(0xFFE5A772);

  Color getMedalColor(int place) {
    switch (place) {
      case 1:
        return gold;
      case 2:
        return silver;
      case 3:
        return bronze;
      default:
        return Colors.grey[200]!;
    }
  }

  Color getHighlightMedalColor(int place) {
    switch (place) {
      case 1:
        return goldHighlight;
      case 2:
        return silverHighlight;
      case 3:
        return bronzeHighlight;
      default:
        return Colors.grey[200]!;
    }
  }
}

extension ColorExtensions on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;

  Color get surfaceColor => Theme.of(this).colorScheme.surface;

  Color get surfaceVariantColor => Theme.of(this).colorScheme.surfaceVariant;

  Color get onSurfaceColor => Theme.of(this).colorScheme.onSurface;

  Color get onSurfaceVariantColor =>
      Theme.of(this).colorScheme.onSurfaceVariant;

  Color get shadowColor => Theme.of(this).colorScheme.shadow;

  Color get errorColor => Theme.of(this).colorScheme.error;

  Color get backgroundColor => Theme.of(this).colorScheme.background;

  Color get outlineColor => Theme.of(this).colorScheme.outline;

  Color get onBackground => Theme.of(this).colorScheme.onBackground;

  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;

  Color get onTertiary => Theme.of(this).colorScheme.onTertiary;

  Color get onError => Theme.of(this).colorScheme.onError;

  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;

  Color get secondaryContainer => Theme.of(this).colorScheme.secondaryContainer;

  Color get tertiaryContainer => Theme.of(this).colorScheme.tertiaryContainer;

  Color get onPrimaryContainer => Theme.of(this).colorScheme.onPrimaryContainer;

  Color get onSecondaryContainer =>
      Theme.of(this).colorScheme.onSecondaryContainer;

  Color get onTertiaryContainer =>
      Theme.of(this).colorScheme.onTertiaryContainer;

  Color get primaryVariant => Theme.of(this).colorScheme.errorContainer;

  Color get secondaryVariant => Theme.of(this).colorScheme.onErrorContainer;

  Color get tertiaryVariant => Theme.of(this).colorScheme.onErrorContainer;

  Color get surfaceTint => Theme.of(this).colorScheme.surfaceTint;

  Color get inverseSurface => Theme.of(this).colorScheme.inverseSurface;

  Color get onInverseSurface => Theme.of(this).colorScheme.onInverseSurface;

  Color get outlineVariant => Theme.of(this).colorScheme.outlineVariant;

  Color get hintColor => Theme.of(this).hintColor;

  Color get dividerColor => Theme.of(this).dividerColor;
}
