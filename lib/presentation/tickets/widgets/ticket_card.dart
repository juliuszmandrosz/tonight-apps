import 'package:flutter/material.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_entity.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class TicketCard extends StatelessWidget {
  final TicketOverview ticketOverview;

  const TicketCard({Key? key, required this.ticketOverview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: InkWell(
          onTap: () async {},
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
                          ticketOverview.clubName,
                          style: theme.textTheme.subtitle1,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          ticketOverview.eventName,
                          style: theme.textTheme.bodyText1,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          ticketOverview.eventDateTime,
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
                      ticketOverview.price.toString() + ' PLN',
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
                      ticketOverview.isVip ? 'V\nI\nP' : '',
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
