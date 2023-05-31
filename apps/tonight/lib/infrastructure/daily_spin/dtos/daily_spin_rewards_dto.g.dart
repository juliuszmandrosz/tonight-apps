// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_spin_rewards_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailySpinRewardsDto _$$_DailySpinRewardsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_DailySpinRewardsDto(
      rewards: (json['rewards'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_DailySpinRewardsDtoToJson(
        _$_DailySpinRewardsDto instance) =>
    <String, dynamic>{
      'rewards': instance.rewards,
    };
