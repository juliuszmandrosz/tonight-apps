import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:ticket_widget/ticket_widget.dart';

class TicketCard extends StatelessWidget {
  final Ticket ticket;

  const TicketCard({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          // TODO: Add case when user has not been on event but give him ability to show photos
          ticket.isExpired && ticket.eventEndDateTime.isBefore(DateTime.now())
              ? AutoRouter.of(context).push(ReviewRoute(ticket: ticket))
              : AutoRouter.of(context).push(
                  EventDetailsRoute(eventId: ticket.eventId),
                ),
      child: TicketWidget(
        height: ticket.isReturned || ticket.isEventCanceled ? 140 : 120,
        width: double.infinity,
        color: context.surfaceColor,
        isCornerRounded: true,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AutoSizeText(
                    ticket.eventName,
                    style: context.headline6,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    context.formatDateTimeToLocaleYMDHM(
                      ticket.eventStartDateTime,
                    ),
                    style: context.bodyText1
                        .copyWith(color: context.secondaryColor),
                  ),
                  if (ticket.isReturned ||
                      ticket.isEventCanceled ||
                      ticket.isReturnable)
                    Text(
                      // TODO - ref
                      ticket.isEventCanceled
                          ? S().canceled.toUpperCase()
                          : ticket.isReturnable
                              ? S().postponed.toUpperCase()
                              : S().returned.toUpperCase(),
                      style: context.subtitle1.copyWith(
                        color: context.tertiaryColor,
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(width: 20),
            AutoSizeText(
              '${ticket.price}'
              '${getCurrencySymbolFromCode(ticket.currency)}',
              style: context.headline6,
              maxLines: 1,
            ),
            const SizedBox(width: 10),
            const VerticalDivider(thickness: 2),
            const SizedBox(width: 10),
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
    );
  }
}
