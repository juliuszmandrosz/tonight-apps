import 'package:flutter/material.dart';
import 'package:raver/domain/tickets/ticket_entity.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class TicketCard extends StatelessWidget {
  final Ticket ticket;

  const TicketCard({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: InkWell(
          onTap: () {
            // AutoRouter.of(context).push(
            //   EventDetailsRoute(eventId: ticket.eventId),
          },
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
                          ticket.eventDateTime,
                          style: theme.textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: Text(
                      // TODO - add currency
                      ticket.price.toString() + ' PLN',
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
                      ticket.isVip ? 'V\nI\nP' : '',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
