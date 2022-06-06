import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:raver/application/invoice_data/form_inputs/country_code.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';
import 'package:raver_common/raver_common.dart';

class CountryCodeInput extends StatelessWidget {
  const CountryCodeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentLocale = Intl.getCurrentLocale().toUpperCase();
    return BlocBuilder<InvoiceDataCubit, InvoiceDataState>(
      buildWhen: (previous, current) =>
          previous.countryCode != current.countryCode ||
          previous.status != current.status,
      builder: (context, state) {
        return InputDecorator(
          decoration: const InputDecoration().copyWith(
            contentPadding: const EdgeInsets.all(0),
            errorText: _getCountryCodeInputErrorMessage(state),
          ),
          child: CountryCodePicker(
            onChanged: (value) => context
                .read<InvoiceDataCubit>()
                .countryCodeChanged(value.code!),
            initialSelection: currentLocale,
            showDropDownButton: true,
            favorite: [currentLocale],
            showCountryOnly: true,
            showOnlyCountryWhenClosed: true,
            alignLeft: true,
            backgroundColor: context.surfaceColor,
            textStyle: context.bodyText2,
            dialogBackgroundColor: context.surfaceColor,
            countryFilter: _getAvailableCountries(),
            barrierColor: context.surfaceColor,
            dialogTextStyle: context.bodyText2,
            closeIcon: const Icon(Icons.close),
            searchStyle: context.subtitle1,
          ),
        );
      },
    );
  }

  String? _getCountryCodeInputErrorMessage(InvoiceDataState state) {
    if (state.countryCode.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return countryCodeErrorMessages[state.countryCode.error];
  }

  _getAvailableCountries() {
    return const [
      'AT',
      'BE',
      'BG',
      // 'CY',
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
}
