import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
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
    return Card(
      child: InkWell(
        onTap: () =>
            //TODO: Add case when user has not been on event but give him ability to show photos
            ticket.isExpired
                ? AutoRouter.of(context).push(ReviewRoute(ticket: ticket))
                : AutoRouter.of(context).push(
                    EventDetailsRoute(eventId: ticket.eventId),
                  ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        ticket.clubName,
                        style: context.headline6,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                      AutoSizeText(
                        ticket.eventName,
                        style: context.subtitle1
                            .copyWith(color: context.secondaryColor),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                      AutoSizeText(
                        context.formatDateTimeToLocaleYMDHM(
                          ticket.eventStartDateTime,
                        ),
                        style: context.subtitle1
                            .copyWith(color: context.secondaryColor),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    '${ticket.price} ${getCurrencySymbolFromCode(ticket.currency)}',
                    style: context.headline5,
                    maxLines: 1,
                  ),
                ),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: context.onSurfaceColor,
                ),
                Expanded(
                  child: Text(
                    ticket.isVip ? S().vipVertical : '',
                    textAlign: TextAlign.center,
                    style: context.subtitle1.copyWith(
                      color: context.tertiaryColor,
                    ),
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
