import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutTicketCard extends StatelessWidget {
  const TicketCheckoutTicketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      builder: (context, state) {
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
                          style: theme.textTheme.subtitle1,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          ticket?.eventName ?? event!.eventName,
                          style: theme.textTheme.bodyText1,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          context.formatDateTimeToLocaleYMDHM(
                            ticket?.eventDateTime ?? event!.eventStartDateTime,
                          ),
                          style: theme.textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '${state.price} ${getCurrencySymbolFromCode(
                        ticket?.currency ?? event!.currency,
                      )}',
                      style: theme.textTheme.headline1,
                    ),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    color: DefaultColors.textColorLight,
                  ),
                  Expanded(
                    child: Text(
                      state.isVip ? S().vipVertical : '',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle2,
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
