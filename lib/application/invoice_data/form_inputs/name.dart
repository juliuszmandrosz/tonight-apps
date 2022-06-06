import 'package:formz/formz.dart';

enum NameError { empty }

final nameErrorMessages = {
  // TODO - add translation
  NameError.empty: 'Enter name'
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
