import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:translations/translations.dart';

class TicketCheckoutTicketCard extends StatelessWidget {
  const TicketCheckoutTicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutBloc, TicketCheckoutState>(
      buildWhen: (p, c) =>
          p.ticketCheckoutData != c.ticketCheckoutData ||
          p.ticketQuantity != c.ticketQuantity,
      builder: (context, state) {
        final data = state.ticketCheckoutData.getOrCrash();
        final currentPool = data.currentTicketPool;
        final isSoldOut = currentPool.isSoldOut;
        return TicketWidget(
          height: isSoldOut ? 130 : 150,
          width: double.infinity,
          color: context.surfaceColor,
          isCornerRounded: true,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${S().poolNo} ${currentPool.poolNumber}',
                style: context.titleLarge.copyWith(
                  decorationThickness: 2,
                  decoration: isSoldOut
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  color:
                      isSoldOut ? context.outlineColor : context.secondaryColor,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '${currentPool.ticketPrice}${getCurrencySymbolFromCode(currentPool.currency)}',
                style: context.titleLarge.copyWith(
                  decorationThickness: 2,
                  decoration: isSoldOut
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  color:
                      isSoldOut ? context.outlineColor : context.onSurfaceColor,
                ),
              ),
              if (isSoldOut) const SizedBox(height: 12),
              if (isSoldOut)
                Text(
                  S().soldOut.toUpperCase(),
                  style: context.titleMedium.copyWith(
                    color: context.tertiaryColor,
                  ),
                ),
              if (!isSoldOut) const SizedBox(height: 12),
              if (!isSoldOut)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: () => context
                          .read<TicketCheckoutBloc>()
                          .add(TicketCheckoutEvent.ticketQuantityChanged(
                            state.ticketQuantity - 1,
                          )),
                      child: const FaIcon(FontAwesomeIcons.minus),
                    ),
                    Text(
                      '${state.ticketQuantity}',
                      style: context.titleLarge,
                    ),
                    OutlinedButton(
                      onPressed: () => context
                          .read<TicketCheckoutBloc>()
                          .add(TicketCheckoutEvent.ticketQuantityChanged(
                            state.ticketQuantity + 1,
                          )),
                      child: const FaIcon(FontAwesomeIcons.plus),
                    ),
                  ],
                )
            ],
          ),
        );
      },
    );
  }
}
