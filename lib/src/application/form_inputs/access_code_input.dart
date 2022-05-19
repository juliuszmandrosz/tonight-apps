import 'package:formz/formz.dart';
import 'package:raver_translations/raver_translations.dart';

enum AccessCodeInputError { empty, invalid }

final accessCodeInputErrorMessages = {
  AccessCodeInputError.empty: S().enterAccessCode,
};

class AccessCodeInput extends FormzInput<String, AccessCodeInputError> {
  const AccessCodeInput.pure() : super.pure('');

  const AccessCodeInput.dirty([String value = '']) : super.dirty(value);

  @override
  AccessCodeInputError? validator(String value) {
    if (value.isEmpty) {
      return AccessCodeInputError.empty;
    }

    return null;
  }
}
