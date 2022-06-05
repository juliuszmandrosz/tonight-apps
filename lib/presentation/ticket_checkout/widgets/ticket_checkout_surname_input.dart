import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/core/form_inputs/name.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';

class TicketCheckoutSurnameInput extends StatelessWidget {
  const TicketCheckoutSurnameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) => previous.surname != current.surname,
      builder: (context, state) {
        return TextField(
          onChanged: (value) =>
              context.read<TicketCheckoutCubit>().surnameChanged(value),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            // TODO - add translation
            labelText: 'Surname',
            errorText: _getSurnameInputErrorMessage(state),
          ),
        );
      },
    );
  }

  String? _getSurnameInputErrorMessage(TicketCheckoutState state) {
    if (state.surname.valid || state.invoiceDataStatus != FormzStatus.invalid) {
      return null;
    }

    return nameErrorMessages[state.name.error];
  }
}
