import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_reward_failure.freezed.dart';

@freezed
class UserRewardFailure with _$UserRewardFailure {
  const factory UserRewardFailure.unexpected() = _Unexpected;
}
