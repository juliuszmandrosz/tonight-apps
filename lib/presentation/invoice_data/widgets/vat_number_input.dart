import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/invoice_data/form_inputs/vat_number.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';

class VatNumberInput extends StatelessWidget {
  const VatNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceDataCubit, InvoiceDataState>(
      buildWhen: (previous, current) =>
          previous.vatNumber != current.vatNumber ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          onChanged: (value) =>
              context.read<InvoiceDataCubit>().vatNumberChanged(value),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            // TODO - add translation
            labelText: 'Numer NIP',
            errorText: _getVatNumberInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getVatNumberInputErrorMessage(InvoiceDataState state) {
    if (state.vatNumber.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return vatNumberErrorMessages[state.vatNumber.error];
  }
}
