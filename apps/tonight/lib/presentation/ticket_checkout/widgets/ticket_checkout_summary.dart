import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:translations/translations.dart';

class TicketCheckoutSummary extends StatelessWidget {
  const TicketCheckoutSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutBloc, TicketCheckoutState>(
      buildWhen: (p, c) =>
          p.ticketCheckoutData != c.ticketCheckoutData ||
          p.ticketQuantity != c.ticketQuantity ||
          p.totalAmount != c.totalAmount ||
          p.serviceFeeAmount != c.serviceFeeAmount ||
          p.promotionCode != c.promotionCode,
      builder: (context, state) {
        final data = state.ticketCheckoutData.getOrCrash();
        final totalAmount = state.totalAmount.getOrCrash();
        final serviceFeeAmount = state.serviceFeeAmount.getOrCrash();
        final currency = data.currency;
        return Card(
          color: context.surfaceColor,
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${state.ticketQuantity} x ${S().poolNo} '
                      '${data.currentTicketPool.poolNumber}',
                      style: context.bodyMedium.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                    Text(
                      formatDoubleToMoney(
                        data.currentTicketPool.ticketPrice.toDouble() *
                            state.ticketQuantity,
                        currency,
                      ),
                      style: context.bodyMedium.copyWith(
                        color: context.secondaryColor,
                      ),
                    )
                  ],
                ),
                if (serviceFeeAmount > 0) const SizedBox(height: 15),
                if (serviceFeeAmount > 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S().serviceFee,
                        style: context.bodyMedium.copyWith(
                          color: context.secondaryColor,
                        ),
                      ),
                      Text(
                        formatDoubleToMoney(serviceFeeAmount, currency),
                        style: context.bodyMedium.copyWith(
                          color: context.secondaryColor,
                        ),
                      )
                    ],
                  ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S().total,
                      style: context.titleLarge.copyWith(
                        color: context.primaryColor,
                      ),
                    ),
                    Text(
                      formatDoubleToMoney(totalAmount, currency),
                      style: context.titleLarge.copyWith(
                        color: context.primaryColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
