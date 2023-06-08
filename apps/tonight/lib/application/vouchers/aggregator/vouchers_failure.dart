import 'package:freezed_annotation/freezed_annotation.dart';

part 'vouchers_failure.freezed.dart';

@freezed
class VouchersFailure with _$VouchersFailure {
  const factory VouchersFailure.unexpected() = _Unexpected;
}
