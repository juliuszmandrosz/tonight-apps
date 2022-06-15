import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:raver_translations/raver_translations.dart';

enum CountryCodeError { empty }

final countryCodeErrorMessages = {
  CountryCodeError.empty: S().selectCountry,
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
