import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/auth/auth_value_failures.dart';
import 'package:raver/domain/clubs/club_value_failures.dart';

part 'value_failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> failure) = Auth<T>;
  const factory ValueFailure.clubs(ClubValueFailure<T> failure) = Clubs<T>;

  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxStringLength,
  }) = MaxStringLength<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = EmptyString<T>;
}
