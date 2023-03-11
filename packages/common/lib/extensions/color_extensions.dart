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
}
