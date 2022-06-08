import 'package:intl/intl.dart';
import 'package:money2/money2.dart';
import 'package:raver_common/raver_common.dart';

String formatDoubleToMoney(double amount, String currencyCode) {
  final locale = Intl.getCurrentLocale();

  final money = Money.fromNum(amount, code: currencyCode.toUpperCase());

  final formattedAmount = money.amount.formatIntl(locale);

  final currencySymbol = getCurrencySymbolFromCode(currencyCode);

  return '$formattedAmount$currencySymbol';
}
