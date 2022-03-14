import 'package:formz/formz.dart';
import 'package:raver/generated/l10n.dart';

enum PasswordInputError {
  empty,
  short,
  lowerCase,
  upperCase,
  digit,
  specialCharacter,
}

final passwordInputErrorMessages = {
  PasswordInputError.empty: S().enterPassword,
  PasswordInputError.short: S().passwordTooShort,
  PasswordInputError.lowerCase: S().passwordLowerCase,
  PasswordInputError.upperCase: S().passwordUpperCase,
  PasswordInputError.digit: S().passwordDigit,
  PasswordInputError.specialCharacter: S().passwordSpecialCharacter,
};

class PasswordInput extends FormzInput<String, PasswordInputError> {
  final bool isSignIn;

  const PasswordInput.pure([this.isSignIn = false]) : super.pure('');

  const PasswordInput.dirty({
    this.isSignIn = false,
    String value = '',
  }) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.isEmpty) {
      return PasswordInputError.empty;
    }

    if (isSignIn) {
      return null;
    }

    if (value.length < 8) {
      return PasswordInputError.short;
    }

    if (!RegExp('^(?=.*[a-z])').hasMatch(value)) {
      return PasswordInputError.lowerCase;
    }

    if (!RegExp('^(?=.*[A-Z])').hasMatch(value)) {
      return PasswordInputError.upperCase;
    }

    if (!RegExp('^(?=.*[0-9])').hasMatch(value)) {
      return PasswordInputError.digit;
    }

    if (!RegExp('^(?=.*?[!@#\$&*~])').hasMatch(value)) {
      return PasswordInputError.specialCharacter;
    }

    return null;
  }
}
