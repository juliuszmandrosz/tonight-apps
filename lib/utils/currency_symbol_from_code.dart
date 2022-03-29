import 'package:dartz/dartz.dart';
import 'package:money2/money2.dart';
import 'package:raver_common/raver_common.dart';

Either<CurrencySymbolFailure, String> getCurrencySymbolFromCode(
    String currencyCode) {
  final currency = Currencies().find(currencyCode.toUpperCase());

  if (currency == null) {
    return left(const CurrencySymbolFailure.invalidCode());
  }

  return right(currency.symbol);
}
