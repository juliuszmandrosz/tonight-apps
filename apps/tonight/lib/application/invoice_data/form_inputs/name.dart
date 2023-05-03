import 'package:formz/formz.dart';
import 'package:translations/translations.dart';

enum NameError { empty }

final nameErrorMessages = {
  NameError.empty: S().fieldShouldNotBeEmpty,
};

class Name extends FormzInput<String, NameError> {
  const Name.pure() : super.pure('');

  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameError? validator(String value) {
    if (value.isEmpty) {
      return NameError.empty;
    }

    return null;
  }
}
