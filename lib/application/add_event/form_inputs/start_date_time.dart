import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

enum StartDateTimeError { empty }

final startDateTimeErrorMessages = {
  StartDateTimeError.empty: S().enterStartDateTime,
};

String? getStartDateTimeErrorMessage(AddEventState state) {
  if (state.startDateTime.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return startDateTimeErrorMessages[state.startDateTime.error];
}

class StartDateTime extends FormzInput<DateTime?, StartDateTimeError> {
  const StartDateTime.pure() : super.pure(null);

  const StartDateTime.dirty(DateTime? value) : super.dirty(value);

  @override
  StartDateTimeError? validator(DateTime? value) {
    if (value == null) {
      return StartDateTimeError.empty;
    }

    return null;
  }
}
