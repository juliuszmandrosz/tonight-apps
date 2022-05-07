import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/form_inputs/ticket_price.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketPoolPriceInput extends HookWidget {
  const TicketPoolPriceInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text:
          '${context.read<AddEditTicketPoolCubit>().state.ticketPrice.value ?? ''}',
    );

    return BlocBuilder<AddEditTicketPoolCubit, AddEditTicketPoolState>(
      buildWhen: (previous, current) =>
          previous.ticketPrice != current.ticketPrice ||
          previous.status != current.status,
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              onChanged: (value) => context
                  .read<AddEditTicketPoolCubit>()
                  .ticketPriceChanged(int.tryParse(value)),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: S().ticketPrice,
                errorText: getTicketPriceErrorMessage(state),
              ),
            ),
          ],
        );
      },
    );
  }
}
