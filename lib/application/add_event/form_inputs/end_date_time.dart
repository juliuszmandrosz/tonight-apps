import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

enum EndDateTimeError { empty, beforeStart, startDateEmpty, tooShort }

final endDateTimeErrorMessages = {
  EndDateTimeError.empty: S().enterEndDateTime,
  EndDateTimeError.startDateEmpty: S().enterStartDateTime,
  EndDateTimeError.beforeStart: S().endDateBeforeStart,
  EndDateTimeError.tooShort: S().eventTimeTooShort,
};

String? getEndDateTimeErrorMessage(AddEventState state) {
  if (state.endDateTime.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return endDateTimeErrorMessages[state.endDateTime.error];
}

class EndDateTime extends FormzInput<DateTime?, EndDateTimeError> {
  final DateTime? startDateTime;

  const EndDateTime.pure([this.startDateTime]) : super.pure(null);

  const EndDateTime.dirty({DateTime? value, required this.startDateTime})
      : super.dirty(value);

  @override
  EndDateTimeError? validator(DateTime? value) {
    if (value == null) {
      return EndDateTimeError.empty;
    }

    if (startDateTime == null) {
      return EndDateTimeError.startDateEmpty;
    }

    if (value.isBefore(startDateTime!)) {
      return EndDateTimeError.beforeStart;
    }

    if (value.difference(startDateTime!).inMinutes < 60) {
      return EndDateTimeError.tooShort;
    }

    // TODO - add max duration of event

    return null;
  }
}
