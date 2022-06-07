import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/invoice_data/form_inputs/name.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';
import 'package:raver/application/invoice_data/invoice_data_type.dart';

class NameInput extends HookWidget {
  const NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final invoiceDataState = context.read<InvoiceDataCubit>().state;

    final textController = useTextEditingController(
      text: invoiceDataState.name.value,
    );

    return BlocBuilder<InvoiceDataCubit, InvoiceDataState>(
      buildWhen: (previous, current) =>
          previous.name != current.name ||
          previous.status != current.status ||
          previous.invoiceDataType != current.invoiceDataType,
      builder: (context, state) {
        return TextField(
          controller: textController,
          onChanged: (value) =>
              context.read<InvoiceDataCubit>().nameChanged(value),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            // TODO - add translation
            labelText: state.invoiceDataType.isCompany
                ? 'Nazwa firmy'
                : 'Imię i nazwisko',
            errorText: _getNameInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getNameInputErrorMessage(InvoiceDataState state) {
    if (state.name.valid || state.status != FormzStatus.invalid) {
      return null;
    }

    return nameErrorMessages[state.name.error];
  }
}
