import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_spin_failure.freezed.dart';

@freezed
class DailySpinFailure with _$DailySpinFailure {
  const factory DailySpinFailure.unexpected() = _Unexpected;

}
