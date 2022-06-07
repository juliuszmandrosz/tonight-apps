import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_params_failure.freezed.dart';

@freezed
class CurrencyParamsFailure with _$CurrencyParamsFailure {
  factory CurrencyParamsFailure.unexpected() = _Unexpected;
}
