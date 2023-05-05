import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:translations/translations.dart';

class PhoneNumberField extends StatefulWidget {
  final Key formKey;
  final void Function(String?) onInputChanged;

  const PhoneNumberField({
    required this.formKey,
    required this.onInputChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  final _initialCountry = Intl.getCurrentLocale().toUpperCase();
  late final PhoneNumber _initialNumber;

  @override
  void initState() {
    super.initState();
    _initialNumber = PhoneNumber(isoCode: _initialCountry);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: InternationalPhoneNumberInput(
        onInputChanged: (s) => widget.onInputChanged(s.phoneNumber),
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          useEmoji: true,
        ),
        autoFocus: true,
        textStyle: context.titleSmall,
        selectorTextStyle: context.titleSmall,
        initialValue: _initialNumber,
        locale: _initialCountry,
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
