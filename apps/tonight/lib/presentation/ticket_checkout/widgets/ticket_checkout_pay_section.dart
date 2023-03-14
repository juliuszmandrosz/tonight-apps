import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:tonight/presentation/ticket_checkout/widgets/ticket_proceed_to_pay_button.dart';

class TicketCheckoutPaySection extends StatelessWidget {
  const TicketCheckoutPaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.eventTickets.getOrCrash().isSoldOut !=
          current.eventTickets.getOrCrash().isSoldOut,
      builder: (context, state) {
        final isSoldOut = state.eventTickets.getOrCrash().isSoldOut;
        if (!isSoldOut) {
          return const TicketProceedToPayButton();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
