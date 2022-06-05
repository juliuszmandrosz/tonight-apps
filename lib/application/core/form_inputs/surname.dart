import 'package:formz/formz.dart';

enum SurnameError { empty }

final surnameMessages = {
  // TODO - add translation
  SurnameError.empty: 'Enter surname'
};

class Surname extends FormzInput<String, SurnameError> {
  const Surname.pure() : super.pure('');

  const Surname.dirty([String value = '']) : super.dirty(value);

  @override
  SurnameError? validator(String value) {
    if (value.isEmpty) {
      return SurnameError.empty;
    }

    return null;
  }
}
