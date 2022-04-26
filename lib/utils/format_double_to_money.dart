import 'package:money2/money2.dart';

formatDoubleToMoneyDecimal(double amount, String currencyCode) {
  return Money.fromNum(amount, code: currencyCode.toUpperCase()).amount;
}
