import 'package:freezed_annotation/freezed_annotation.dart';

part 'selector_reward_failure.freezed.dart';

@freezed
class SelectorRewardFailure with _$SelectorRewardFailure {
  const factory SelectorRewardFailure.unexpected() = _Unexpected;

  const factory SelectorRewardFailure.permissionDenied() = _PermissionDenied;
}
