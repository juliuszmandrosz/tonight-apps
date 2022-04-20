import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:raver_translations/raver_translations.dart';

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

  showSnackbarMessage(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  Future<bool?> showDeleteConfirmationDialog() async {
    return await showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text(S().confirm),
          content: Text(S().confirmDeleteMessage),
          actionsPadding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(S().cancel.toUpperCase()),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(S().delete.toUpperCase()),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<bool?> showConfirmationDialogWithCustomMessage(String message) async {
    return await showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text(S().confirm),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actionsPadding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(S().no.toUpperCase()),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(S().yes.toUpperCase()),
              ),
            ),
          ],
        );
      },
    );
  }
}
