import 'package:formz/formz.dart';
import 'package:translations/raver_translations.dart';

enum OldPasswordInputError { empty }

final oldPasswordInputErrorMessages = {
  OldPasswordInputError.empty: S().enterPassword
};

class OldPasswordInput extends FormzInput<String, OldPasswordInputError> {
  const OldPasswordInput.pure() : super.pure('');

  const OldPasswordInput.dirty([String value = '']) : super.dirty(value);

  @override
  OldPasswordInputError? validator(String value) {
    if (value.isEmpty) {
      return OldPasswordInputError.empty;
    }
    return null;
  }
}
