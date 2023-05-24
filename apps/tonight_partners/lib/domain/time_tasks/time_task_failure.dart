import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'time_task_failure.freezed.dart';

@freezed
class TimeTaskFailure with _$TimeTaskFailure {
  const factory TimeTaskFailure.unexpected() = _Unexpected;

  const factory TimeTaskFailure.rewardAlreadyAcquired() =
      _RewardAlreadyAcquired;
}

extension TimeTaskFailureX on TimeTaskFailure {
  String get message => when(
        unexpected: () => S().serverError,
        // TODO - add translation
        rewardAlreadyAcquired: () => 'Nagroda została już odebrana',
      );
}
