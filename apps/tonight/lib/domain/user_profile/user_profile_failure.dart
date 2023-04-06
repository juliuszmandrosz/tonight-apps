import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_failure.freezed.dart';

@freezed
class UserProfileFailure with _$UserProfileFailure {
  const factory UserProfileFailure.unexpected() = _Unexpected;
}
