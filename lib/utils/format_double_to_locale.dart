import 'package:intl/intl.dart';

formatDoubleToLocale(double amount) {
  return NumberFormat.decimalPattern().format(amount);
}
