import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_failure.freezed.dart';

@freezed
class RewardFailure with _$RewardFailure {
  const factory RewardFailure.unexpected() = _Unexpected;
}
