import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_value_failures.freezed.dart';

@freezed
class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;

  const factory AuthValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}
