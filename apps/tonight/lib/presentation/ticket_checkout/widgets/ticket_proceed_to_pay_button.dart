import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:translations/translations.dart';

class TicketProceedToPayButton extends StatelessWidget {
  const TicketProceedToPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutBloc, TicketCheckoutState>(
      buildWhen: (p, c) =>
          p.proceedingToPaymentStatus != c.proceedingToPaymentStatus ||
          p.ticketCheckoutData != c.ticketCheckoutData,
      builder: (context, state) {
        final data = state.ticketCheckoutData.getOrCrash();
        final isButtonVisible = context.viewInsets.bottom == 0 &&
            !state.proceedingToPaymentStatus.isLoading() &&
            !data.currentTicketPool.isSoldOut;
        return Visibility(
          visible: isButtonVisible,
          child: SizedBox(
            width: 300,
            child: FloatingActionButton.extended(
              onPressed: () => context
                  .read<TicketCheckoutBloc>()
                  .add(const TicketCheckoutEvent.proceededToPayment()),
              label: Text(S().proceedToPay),
              icon: const FaIcon(FontAwesomeIcons.cartShopping),
            ),
          ),
        );
      },
    );
  }
}
