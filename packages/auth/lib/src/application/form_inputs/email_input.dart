import 'package:formz/formz.dart';
import 'package:translations/generated/generated.dart';

enum EmailInputError {
  empty,
  invalid;

  String get message {
    switch (this) {
      case EmailInputError.empty:
        return S().enterEmail;
      case EmailInputError.invalid:
        return S().invalidEmail;
    }
  }
}

final emailInputErrorMessages = {
  EmailInputError.empty: S().enterEmail,
  EmailInputError.invalid: S().invalidEmail,
};

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
  );

  @override
  EmailInputError? validator(String value) {
    if (value.isEmpty) {
      return EmailInputError.empty;
    }

    if (!_emailRegExp.hasMatch(value)) {
      return EmailInputError.invalid;
    }

    return null;
  }
}
