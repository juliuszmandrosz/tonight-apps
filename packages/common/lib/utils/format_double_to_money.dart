import 'package:common/common.dart';
import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

String formatDoubleToMoney(double amount, String currencyCode) {
  final money = Money.fromNum(amount, code: currencyCode.toUpperCase());

  final formattedAmount = money.amount.formatIntl(Intl.getCurrentLocale());

  final currencySymbol = getCurrencySymbolFromCode(currencyCode);

  return '$formattedAmount$currencySymbol';
}
