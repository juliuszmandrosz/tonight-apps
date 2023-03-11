import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        return Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0 &&
              !state.proceedingToPaymentStatus.isLoading(),
          child: SizedBox(
            width: 300,
            child: FloatingActionButton.extended(
              onPressed: () =>
                  context.read<TicketCheckoutCubit>().proceedToPayForTicket(),
              label: Text(S().proceedToPay),
              icon: const FaIcon(FontAwesomeIcons.coins),
            ),
          ),
        );
      },
    );
  }
}
