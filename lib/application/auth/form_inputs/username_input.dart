import 'package:formz/formz.dart';
import 'package:raver_translations/generated/l10n.dart';

enum UsernameInputError {
  empty,
  short,
  long,
  specialCharacters,
}

final usernameInputErrorMessages = {
  UsernameInputError.empty: S().enterUsername,
  UsernameInputError.short: S().usernameTooShort,
  UsernameInputError.long: S().usernameTooLong,
  UsernameInputError.specialCharacters: S().usernameContainsSpecialCharacters,
};

class UsernameInput extends FormzInput<String, UsernameInputError> {
  static const int _maxLength = 20;
  static const int _minLength = 3;

  const UsernameInput.pure() : super.pure('');

  const UsernameInput.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameInputError? validator(String value) {
    if (value.isEmpty) {
      return UsernameInputError.empty;
    }
    if (value.length < _minLength) {
      return UsernameInputError.short;
    }
    if (value.length > _maxLength) {
      return UsernameInputError.long;
    }
    if (!RegExp("^[A-Za-z0-9 ]*\$").hasMatch(value)) {
      return UsernameInputError.specialCharacters;
    }
    return null;
  }
}
