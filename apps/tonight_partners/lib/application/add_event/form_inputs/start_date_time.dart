import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:raver_translations/generated/l10n.dart';

enum StartDateTimeError { empty, fromPast, tooLate }

final startDateTimeErrorMessages = {
  StartDateTimeError.empty: S().enterStartDateTime,
  StartDateTimeError.fromPast: S().startDateBeforeNow,
  StartDateTimeError.tooLate: S().startDateTooLate,
};

class StartDateTime extends FormzInput<DateTime?, StartDateTimeError> {
  const StartDateTime.pure() : super.pure(null);

  const StartDateTime.dirty(DateTime? value) : super.dirty(value);

  @override
  StartDateTimeError? validator(DateTime? value) {
    if (value == null) {
      return StartDateTimeError.empty;
    }

    if (value.isBefore(DateTime.now())) {
      return StartDateTimeError.fromPast;
    }

    if (value.isAfter(_getMaxEventDateTime())) {
      return StartDateTimeError.tooLate;
    }

    return null;
  }

  _getMaxEventDateTime() {
    final maxDate = DateTime.now().add(const Duration(days: 150));
    final dateWithoutHours = DateUtils.dateOnly(maxDate);
    return dateWithoutHours
        .add(const Duration(days: 1))
        .subtract(const Duration(seconds: 1));
  }
}
