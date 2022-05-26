import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class VipProceedToPayButton extends StatelessWidget {
  const VipProceedToPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<TicketCheckoutCubit>().proceedToPayForVip(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(S().proceedToPay),
      ),
    );
  }
}
