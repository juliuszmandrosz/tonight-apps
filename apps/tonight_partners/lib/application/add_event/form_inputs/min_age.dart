import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/generated/l10n.dart';

enum MinAgeError { empty }

final minAgeErrorMessages = {
  MinAgeError.empty: S().selectMinAge,
};

String? getMinAgeErrorMessage(AddEventState state) {
  if (state.minAge.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return minAgeErrorMessages[state.minAge.error];
}

class MinAge extends FormzInput<int?, MinAgeError> {
  const MinAge.pure() : super.pure(null);

  const MinAge.dirty(int? value) : super.dirty(value);

  @override
  MinAgeError? validator(int? value) {
    if (value == null) {
      return MinAgeError.empty;
    }

    return null;
  }
}
