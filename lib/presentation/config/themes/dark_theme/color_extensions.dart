import 'package:flutter/material.dart';

extension ColorExtensions on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

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
