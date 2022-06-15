import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/invoice_data/form_inputs/vat_number.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class VatNumberInput extends HookWidget {
  const VatNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final invoiceDataState = context.read<InvoiceDataCubit>().state;

    final textController = useTextEditingController(
      text: invoiceDataState.vatNumber.value,
    );

    return BlocBuilder<InvoiceDataCubit, InvoiceDataState>(
      buildWhen: (previous, current) =>
          previous.vatNumber != current.vatNumber ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: textController,
          onChanged: (value) =>
              context.read<InvoiceDataCubit>().vatNumberChanged(value),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: S().vatNumber,
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
