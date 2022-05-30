import 'package:formz/formz.dart';
import 'package:raver_translations/generated/l10n.dart';

enum UsernameError {
  empty,
  short,
  long,
  specialCharacters,
}

final usernameErrorMessages = {
  UsernameError.empty: S().enterUsername,
  UsernameError.short: S().usernameTooShort,
  UsernameError.long: S().usernameTooLong,
  UsernameError.specialCharacters: S().usernameContainsSpecialCharacters,
};

class Username extends FormzInput<String, UsernameError> {
  static const int _maxLength = 20;
  static const int _minLength = 3;

  const Username.pure() : super.pure('');

  const Username.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameError? validator(String value) {
    if (value.isEmpty) {
      return UsernameError.empty;
    }
    if (value.length < _minLength) {
      return UsernameError.short;
    }
    if (value.length > _maxLength) {
      return UsernameError.long;
    }
    if (!RegExp("^[A-Za-z0-9 ]*\$").hasMatch(value)) {
      return UsernameError.specialCharacters;
    }
    return null;
  }
}
