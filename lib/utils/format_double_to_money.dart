import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

String formatDoubleToMoney(double amount, String currencyCode) {
  return Money.fromNum(amount, code: currencyCode.toUpperCase())
      .amount
      .formatIntl(Intl.getCurrentLocale());
}
