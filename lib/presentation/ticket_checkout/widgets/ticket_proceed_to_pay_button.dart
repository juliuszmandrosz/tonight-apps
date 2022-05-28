import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketProceedToPayButton extends StatelessWidget {
  const TicketProceedToPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: () =>
            context.read<TicketCheckoutCubit>().proceedToPayForTicket(),
        child: Text(S().proceedToPay),
      ),
    );
  }
}
