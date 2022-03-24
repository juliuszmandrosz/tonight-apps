import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_reward/add_reward_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

enum RewardDescriptionError { empty, tooLong }

final rewardDescriptionErrorMessages = {
  RewardDescriptionError.empty: S().description,
  RewardDescriptionError.tooLong: S().descTooLong,
};

String? getRewardDescriptionErrorMessage(AddRewardState state) {
  if (state.rewardDescription.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return rewardDescriptionErrorMessages[state.rewardDescription.error];
}

class RewardDescription extends FormzInput<String, RewardDescriptionError> {
  const RewardDescription.pure() : super.pure('');

  const RewardDescription.dirty(String value) : super.dirty(value);

  @override
  RewardDescriptionError? validator(String value) {
    if (value.isEmpty) {
      return RewardDescriptionError.empty;
    }

    if (value.length > 100) {
      return RewardDescriptionError.tooLong;
    }

    return null;
  }
}
