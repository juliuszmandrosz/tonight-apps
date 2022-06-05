import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/core/form_inputs/name.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';

class TicketCheckoutNameInput extends StatelessWidget {
  const TicketCheckoutNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return TextField(
          onChanged: (value) =>
              context.read<TicketCheckoutCubit>().nameChanged(value),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            // TODO - add translation
            labelText: 'Name',
            errorText: _getNameInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getNameInputErrorMessage(TicketCheckoutState state) {
    if (state.name.valid || state.invoiceDataStatus != FormzStatus.invalid) {
      return null;
    }

    return nameErrorMessages[state.name.error];
  }
}
