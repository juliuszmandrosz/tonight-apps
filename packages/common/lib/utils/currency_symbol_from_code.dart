import 'package:money2/money2.dart';

String getCurrencySymbolFromCode(String currencyCode) {
  final currency = Currencies().find(currencyCode.toUpperCase());

  if (currency == null) {
    return currencyCode;
  }

  return currency.symbol;
}
