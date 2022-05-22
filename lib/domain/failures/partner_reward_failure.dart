import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_reward_failure.freezed.dart';

@freezed
class PartnerRewardFailure with _$PartnerRewardFailure {
  const factory PartnerRewardFailure.unexpected() = _Unexpected;
}
