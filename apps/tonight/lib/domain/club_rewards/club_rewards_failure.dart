import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_rewards_failure.freezed.dart';

@freezed
class ClubRewardsFailure with _$ClubRewardsFailure {
  const ClubRewardsFailure._();

  const factory ClubRewardsFailure.unexpected() = _Unexpected;
}
