import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutSummary extends StatelessWidget {
  const TicketCheckoutSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.ticketPrice != current.ticketPrice ||
          previous.serviceFeeAmount != current.serviceFeeAmount,
      builder: (context, state) {
        final currency = state.event.getOrCrash().currency;
        final serviceFeeAmount = state.serviceFeeAmount.getOrCrash();
        final totalAmount = state.totalAmount.getOrCrash();
        final ticketPrice = state.ticketPrice.getOrCrash();
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
                      S().subtotal,
                      style: context.bodyText2.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                    Text(
                      formatDoubleToMoney(ticketPrice.toDouble(), currency),
                      style: context.bodyText2.copyWith(
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
                      S().serviceFee,
                      style: context.bodyText2.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                    Text(
                      formatDoubleToMoney(serviceFeeAmount, currency),
                      style: context.bodyText2.copyWith(
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
                      style: context.headline6.copyWith(
                        color: context.primaryColor,
                      ),
                    ),
                    Text(
                      formatDoubleToMoney(totalAmount, currency),
                      style: context.headline6.copyWith(
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
