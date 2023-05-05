import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:translations/translations.dart';

class PhoneNumberField extends StatelessWidget {
  final Key formKey;
  final void Function(String?) onInputChanged;

  const PhoneNumberField({
    required this.formKey,
    required this.onInputChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Intl.getCurrentLocale().toUpperCase();
    return Form(
      key: formKey,
      child: InternationalPhoneNumberInput(
        onInputChanged: (s) => onInputChanged(s.phoneNumber),
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          useEmoji: true,
        ),
        autoFocus: true,
        textStyle: context.titleSmall,
        selectorTextStyle: context.titleSmall,
        initialValue: PhoneNumber(isoCode: locale),
        locale: locale,
        countries: _getAvailableCountries(),
        inputDecoration: InputDecoration(
          hintText: S().phoneNumber,
        ),
      ),
    );
  }
}

// TODO - get this from db
_getAvailableCountries() {
  return const [
    'AT',
    'BE',
    'BG',
    'CY',
    'CZ',
    'DK',
    'EE',
    'FI',
    'FR',
    'DE',
    'EL',
    'HU',
    'IE',
    'IT',
    'LV',
    'LT',
    'MT',
    'NL',
    'PL',
    'RO',
    'SK',
    'SI',
    'ES',
    'SE',
    'XI',
  ];
}
