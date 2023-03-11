import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/core/invoice_info.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutInvoiceCheckbox extends StatelessWidget {
  const TicketCheckoutInvoiceCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.sendInvoice != current.sendInvoice,
      builder: (context, state) {
        return Column(
          children: [
            InputDecorator(
              decoration: const InputDecoration().copyWith(
                contentPadding: const EdgeInsets.all(2),
              ),
              child: CheckboxListTile(
                activeColor: context.primaryColor,
                title: Text(
                  S().iWantInvoice,
                  style: context.subtitle1,
                ),
                value: state.sendInvoice,
                onChanged: (value) => context
                    .read<TicketCheckoutCubit>()
                    .sendInvoiceChanged(value!),
              ),
            ),
            if (!state.sendInvoice)
              Column(
                children: const [
                  SizedBox(height: 10),
                  InvoiceInfo(),
                ],
              ),
          ],
        );
      },
    );
  }
}
