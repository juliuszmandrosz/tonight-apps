import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCard extends StatelessWidget {
  final Ticket ticket;

  const TicketCard({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(
          EventDetailsRoute(eventId: ticket.eventId),
        ),
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
                        ticket.clubName,
                        style: theme.textTheme.subtitle1,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        ticket.eventName,
                        style: theme.textTheme.bodyText1,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        context
                            .formatDateTimeToLocaleYMDHM(ticket.eventDateTime),
                        style: theme.textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Text(
                    '${ticket.price} ${getCurrencySymbolFromCode(ticket.currency)}',
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
                    ticket.isVip ? S().vipVertical : '',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
