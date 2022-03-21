import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutHeader extends StatelessWidget {
  const TicketCheckoutHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.eventInitData != current.eventInitData ||
          previous.ticketInitData != current.ticketInitData,
      builder: (context, state) {
        return Row(
          children: [
            RaverHeadline(
              text: state.eventInitData.isSome() ? S().tickets(1) : S().vip,
            ),
          ],
        );
      },
    );
  }
}
