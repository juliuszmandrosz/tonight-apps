import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_symbol_failure.freezed.dart';

@freezed
class CurrencySymbolFailure with _$CurrencySymbolFailure {
  const CurrencySymbolFailure._();

  const factory CurrencySymbolFailure.invalidCode() = _InvalidCode;
}
