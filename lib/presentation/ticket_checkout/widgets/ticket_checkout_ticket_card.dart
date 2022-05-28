import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutTicketCard extends StatelessWidget {
  const TicketCheckoutTicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      builder: (context, state) {
        final isSoldOut =
            state.eventTickets.getOrCrash().getCurrentPool().isSoldOut;
        final ticket = state.ticketInitData.isSome()
            ? state.ticketInitData.getOrCrash()
            : null;

        final event = state.eventInitData.isSome()
            ? state.eventInitData.getOrCrash()
            : null;

        return Card(
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Text(
                          ticket?.clubName ?? event!.clubName,
                          style: context.subtitle1,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          ticket?.eventName ?? event!.eventName,
                          style: context.subtitle1,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          context.formatDateTimeToLocaleYMDHM(
                            ticket?.eventStartDateTime ??
                                event!.eventStartDateTime,
                          ),
                          style: context.subtitle1,
                        ),
                        if (isSoldOut)
                          Text(
                            S().soldOut,
                            style: context.subtitle1.copyWith(
                              color: Colors.red,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '${state.checkoutPrice} ${getCurrencySymbolFromCode(
                        ticket?.currency ?? event!.currency,
                      )}',
                      style: context.headline6.copyWith(
                        decoration: isSoldOut
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Text(
                      state.isVip ? S().vipVertical : '',
                      textAlign: TextAlign.center,
                      style: context.subtitle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
