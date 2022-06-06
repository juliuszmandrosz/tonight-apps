import 'package:formz/formz.dart';
import 'package:intl/intl.dart';

enum CountryCodeError { empty }

final countryCodeErrorMessages = {
  // TODO - add translation
  CountryCodeError.empty: 'Enter country code'
};

class CountryCode extends FormzInput<String, CountryCodeError> {
  static final currentLocale = Intl.getCurrentLocale().toUpperCase();

  CountryCode.pure() : super.pure(currentLocale);

  CountryCode.dirty([String value = '']) : super.dirty(value);

  @override
  CountryCodeError? validator(String value) {
    if (value.isEmpty) {
      return CountryCodeError.empty;
    }

    return null;
  }
}
