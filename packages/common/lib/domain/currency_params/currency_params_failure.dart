import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_params_failure.freezed.dart';

@freezed
class CurrencyParamsFailure with _$CurrencyParamsFailure {
  const factory CurrencyParamsFailure.unexpected() = _Unexpected;

  const factory CurrencyParamsFailure.permissionDenied() = _PermissionDenied;
}
