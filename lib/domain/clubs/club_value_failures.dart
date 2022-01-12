import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_value_failures.freezed.dart';

@freezed
class ClubValueFailure<T> with _$ClubValueFailure<T> {
  const factory ClubValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;

  const factory ClubValueFailure.invalidReviewAvg({
    required T failedValue,
  }) = InvalidReviewAvg<T>;
}
