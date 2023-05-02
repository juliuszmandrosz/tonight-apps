import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/form_inputs/ticket_quantity.dart';
import 'package:translations/raver_translations.dart';

class TicketPoolQuantityInput extends HookWidget {
  const TicketPoolQuantityInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text:
          '${context.read<AddEditTicketPoolCubit>().state.ticketQuantity.value ?? ''}',
    );

    return BlocBuilder<AddEditTicketPoolCubit, AddEditTicketPoolState>(
      buildWhen: (previous, current) =>
          previous.ticketQuantity != current.ticketQuantity ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: controller,
          onChanged: (value) => context
              .read<AddEditTicketPoolCubit>()
              .ticketQuantityChanged(int.tryParse(value)),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: S().numberOfTickets,
            errorText: getTicketQuantityErrorMessage(state),
          ),
        );
      },
    );
  }
}
