// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_spin_rewards_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailySpinRewardsDtoImpl _$$DailySpinRewardsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DailySpinRewardsDtoImpl(
      rewards: (json['rewards'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$DailySpinRewardsDtoImplToJson(
        _$DailySpinRewardsDtoImpl instance) =>
    <String, dynamic>{
      'rewards': instance.rewards,
    };
