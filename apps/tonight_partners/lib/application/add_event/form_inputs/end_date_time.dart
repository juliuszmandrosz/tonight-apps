import 'package:formz/formz.dart';
import 'package:translations/translations.dart';

enum EndDateTimeError { empty, beforeStart, startDateEmpty, tooShort, tooLong }

final endDateTimeErrorMessages = {
  EndDateTimeError.empty: S().enterEndDateTime,
  EndDateTimeError.startDateEmpty: S().enterStartDateTime,
  EndDateTimeError.beforeStart: S().endDateBeforeStart,
  EndDateTimeError.tooShort: S().eventTimeTooShort,
  EndDateTimeError.tooLong: S().eventDurationTooLong,
};

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

    if (value.difference(startDateTime!).inMinutes > 60 * 24) {
      return EndDateTimeError.tooLong;
    }

    return null;
  }
}
