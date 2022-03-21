import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutPayButton extends StatelessWidget {
  const TicketCheckoutPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.proceedingToPaymentStatus !=
          current.proceedingToPaymentStatus,
      builder: (context, state) {
        state.proceedingToPaymentStatus.isLoading()
            ? context.loaderOverlay.show()
            : context.loaderOverlay.hide();
        return ElevatedButton(
          onPressed: () => state.eventInitData.isSome()
              ? context.read<TicketCheckoutCubit>().proceedToPayForTicket()
              : context.read<TicketCheckoutCubit>().proceedToPayForVip(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(S().proceedToPay),
          ),
        );
      },
    );
  }
}
