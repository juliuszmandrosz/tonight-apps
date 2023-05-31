import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/daily_spin/daily_spin_rewards_entity.dart';

part 'daily_spin_rewards_dto.freezed.dart';

part 'daily_spin_rewards_dto.g.dart';

@freezed
class DailySpinRewardsDto with _$DailySpinRewardsDto {
  const DailySpinRewardsDto._();

  @JsonSerializable()
  const factory DailySpinRewardsDto({
    required List<int> rewards,
  }) = _DailySpinRewardsDto;

  factory DailySpinRewardsDto.fromJson(Map<String, dynamic> json) =>
      _$DailySpinRewardsDtoFromJson(json);

  factory DailySpinRewardsDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return DailySpinRewardsDto.fromJson(
      documentSnapshot.data() as Map<String, dynamic>,
    );
  }

  factory DailySpinRewardsDto.fromDomain(DailySpinRewards dailySpinRewards) {
    return DailySpinRewardsDto(
      rewards: dailySpinRewards.rewards,
    );
  }

  DailySpinRewards toDomain() {
    return DailySpinRewards(rewards);
  }
}
