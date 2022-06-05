import 'package:formz/formz.dart';

enum TaxNumberError { _ }

class TaxNumber extends FormzInput<String, TaxNumberError> {
  const TaxNumber.pure() : super.pure('');

  const TaxNumber.dirty([String value = '']) : super.dirty(value);

  @override
  TaxNumberError? validator(String value) {
    return null;
  }
}
