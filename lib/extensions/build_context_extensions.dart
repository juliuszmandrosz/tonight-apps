import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension BuildContextX on BuildContext {
  String getCurrencySymbol() {
    Locale locale = Localizations.localeOf(this);
    final format = NumberFormat.simpleCurrency(locale: locale.toString());
    return format.currencySymbol;
  }

  String getCurrencyName() {
    Locale locale = Localizations.localeOf(this);
    final format = NumberFormat.simpleCurrency(locale: locale.toString());
    return format.currencyName!;
  }

  String formatDateTimeToLocaleYMDHM(DateTime dateTime) {
    Locale locale = Localizations.localeOf(this);
    final ymdFormatter = DateFormat.yMMMd(locale.toLanguageTag());
    final hmFormatter = DateFormat.jm(locale.toLanguageTag());
    final formattedYMD = ymdFormatter.format(dateTime);
    final formattedHM = hmFormatter.format(dateTime);
    return '$formattedYMD, $formattedHM';
  }

  String formatDateTimeToLocaleYMD(DateTime dateTime) {
    Locale locale = Localizations.localeOf(this);
    final formatter = DateFormat.yMMMd(locale.toLanguageTag());
    return formatter.format(dateTime);
  }

  String formatDateTimeToLocaleHM(DateTime dateTime) {
    Locale locale = Localizations.localeOf(this);
    final formatter = DateFormat.jm(locale.toLanguageTag());
    return formatter.format(dateTime);
  }
}
