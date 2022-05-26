import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/ticket_checkout/widgets/ticket_proceed_to_pay_button.dart';
import 'package:raver/presentation/ticket_checkout/widgets/vip_proceed_to_pay_button.dart';
import 'package:raver_common/raver_common.dart';

class TicketCheckoutPaySection extends StatelessWidget {
  const TicketCheckoutPaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.proceedingToPaymentStatus !=
              current.proceedingToPaymentStatus ||
          previous.eventTickets.getOrCrash().isSoldOut !=
              current.eventTickets.getOrCrash().isSoldOut,
      builder: (context, state) {
        final isVipPayment = state.ticketInitData.isSome();
        final isCurrentPoolSoldOut = state.eventTickets.getOrCrash().isSoldOut;
        if (isVipPayment) {
          return const VipProceedToPayButton();
        }
        if (!isCurrentPoolSoldOut) {
          return const TicketProceedToPayButton();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
