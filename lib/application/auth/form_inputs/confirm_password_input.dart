import 'package:formz/formz.dart';
import 'package:raver/generated/l10n.dart';

enum ConfirmPasswordInputError { notMatch }

final confirmPasswordInputErrorMessages = {
  ConfirmPasswordInputError.notMatch: S().passwordsDoNotMatch,
};

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordInputError> {
  final String password;

  const ConfirmPasswordInput.pure([this.password = '']) : super.pure('');

  const ConfirmPasswordInput.dirty({required this.password, String value = ''})
      : super.dirty(value);

  @override
  ConfirmPasswordInputError? validator(String value) {
    return password == value ? null : ConfirmPasswordInputError.notMatch;
  }
}
