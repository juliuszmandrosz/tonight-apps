import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketProceedToPayButton extends StatelessWidget {
  const TicketProceedToPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.proceedingToPaymentStatus !=
          current.proceedingToPaymentStatus,
      builder: (context, state) {
        return state.proceedingToPaymentStatus.isLoading()
            ? const Center(child: CircularProgressIndicator())
            : ElevatedButton(
                onPressed: () =>
                    context.read<TicketCheckoutCubit>().proceedToPayForTicket(),
                child: Text(S().proceedToPay),
              );
      },
    );
  }
}
