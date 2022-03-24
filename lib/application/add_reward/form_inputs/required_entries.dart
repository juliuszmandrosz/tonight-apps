import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_reward/add_reward_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

enum RequiredEntriesError { empty, tooMuch }

final requiredEntriesErrorMessages = {
  RequiredEntriesError.empty: S().enterRequiredEntries,
  RequiredEntriesError.tooMuch: S().tooMuchRequiredEntries,
};

String? getRequiredEntriesErrorMessage(AddRewardState state) {
  if (state.requiredEntries.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return requiredEntriesErrorMessages[state.requiredEntries.error];
}

class RequiredEntries extends FormzInput<int?, RequiredEntriesError> {
  const RequiredEntries.pure() : super.pure(null);

  const RequiredEntries.dirty(int? value) : super.dirty(value);

  @override
  RequiredEntriesError? validator(int? value) {
    if (value == null) {
      return RequiredEntriesError.empty;
    }

    if (value > 1000) {
      return RequiredEntriesError.tooMuch;
    }

    return null;
  }
}
