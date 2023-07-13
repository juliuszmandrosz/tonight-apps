import 'package:formz/formz.dart';
import 'package:translations/translations.dart';

enum BirthdateError {
  notOldEnough,
}

final birthdateErrorMessages = {
  BirthdateError.notOldEnough: S().youMustBeAdult,
};

class BirthdateValueObject extends FormzInput<DateTime?, BirthdateError> {
  const BirthdateValueObject.pure() : super.pure(null);

  const BirthdateValueObject.dirty(DateTime? value) : super.dirty(value);

  @override
  BirthdateError? validator(DateTime? value) {
    if (value == null) {
      return null;
    }

    final now = DateTime.now();
    final minAllowedDate = DateTime(now.year - 18, now.month, now.day);

    if (value.isAfter(minAllowedDate)) {
      return BirthdateError.notOldEnough;
    }

    return null;
  }
}
