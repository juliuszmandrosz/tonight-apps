import 'package:formz/formz.dart';

enum BirthdateError {
  notOldEnough,
}

final birthdateErrorMessages = {
  // TODO - add translations
  BirthdateError.notOldEnough: 'You must be at least 18 years old',
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
