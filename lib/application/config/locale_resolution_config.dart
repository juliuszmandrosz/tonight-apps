import 'package:flutter/material.dart';

LocaleListResolutionCallback get localeConfig => (locales, supportedLocales) {
      if (locales == null) {
        return const Locale('en');
      }

      final mappedLocales = locales.map(
        (locale) => locale.toString().toLowerCase().substring(0, 2),
      );

      for (final locale in mappedLocales.toList()) {
        if (supportedLocales.toString().contains(locale)) {
          return Locale(locale);
        }
      }
      return const Locale('en');
    };
