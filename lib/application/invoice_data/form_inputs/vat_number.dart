import 'package:formz/formz.dart';

enum VatNumberError { empty, invalid }

final vatNumberErrorMessages = {
  // TODO - add translation
  VatNumberError.empty: 'Enter vat number',
  VatNumberError.invalid: 'Invalid',
};

class VatNumber extends FormzInput<String, VatNumberError> {
  const VatNumber.pure() : super.pure('');

  const VatNumber.dirty([String value = '']) : super.dirty(value);

  @override
  VatNumberError? validator(String value) {
    if (value.isEmpty) {
      return VatNumberError.empty;
    }

    if (!RegExp('[0-9]').hasMatch(value)) {
      return VatNumberError.invalid;
    }

    return null;
  }
}
