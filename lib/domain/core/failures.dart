import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> failure) = Auth<T>;
  const factory ValueFailure.clubs(ClubValueFailure<T> failure) = Clubs<T>;
}

@freezed
class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;

  const factory AuthValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}

@freezed
class ClubValueFailure<T> with _$ClubValueFailure<T>{
  const factory ClubValueFailure.exceedingLength({
    required T failedValue,
    required int maxStringLength,
  }) = MaxStringLength<T>;

  const factory ClubValueFailure.empty({
    required T failedValue,
  }) = EmptyString<T>;

  const factory ClubValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;

  const factory ClubValueFailure.invalidReviewAvg({
    required T failedValue,
  }) = InvalidReviewAvg<T>;
}
