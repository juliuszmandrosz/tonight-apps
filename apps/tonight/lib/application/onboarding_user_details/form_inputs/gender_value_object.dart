import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding_user_details/gender.dart';

enum GenderError { empty }

final genderErrorMessages = {};

class GenderValueObject extends FormzInput<Gender?, GenderError> {
  const GenderValueObject.pure() : super.pure(null);

  const GenderValueObject.dirty(Gender? value) : super.dirty(value);

  @override
  GenderError? validator(Gender? value) {
    return null;
  }
}
