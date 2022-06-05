import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/core/form_inputs/name.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';

class TicketCheckoutTaxNumberInput extends StatelessWidget {
  const TicketCheckoutTaxNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) => previous.taxNumber != current.taxNumber,
      builder: (context, state) {
        return TextField(
          onChanged: (value) =>
              context.read<TicketCheckoutCubit>().taxNumberChanged(value),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            // TODO - add translation
            labelText: 'Tax number (optional)',
            errorText: _getTaxNumberInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getTaxNumberInputErrorMessage(TicketCheckoutState state) {
    if (state.taxNumber.valid ||
        state.invoiceDataStatus != FormzStatus.invalid) {
      return null;
    }

    return nameErrorMessages[state.name.error];
  }
}
