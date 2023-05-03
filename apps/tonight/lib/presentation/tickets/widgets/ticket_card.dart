import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:tickets/tickets.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

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
              ? context.pushRoute(
                  ReviewRoute(eventId: ticket.eventId),
                )
              : context.pushRoute(
                  EventDetailsRoute(eventId: ticket.eventId),
                ),
      child: TicketWidget(
        height:
            ticket.isReturned || ticket.isEventCanceled || ticket.isReturnable
                ? 140
                : 120,
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
                    style: context.titleLarge,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AutoSizeText(
                    context.formatDateTimeToLocaleYMDHM(
                      ticket.eventStartDateTime,
                    ),
                    style: context.bodyLarge
                        .copyWith(color: context.secondaryColor),
                    maxLines: 1,
                  ),
                  if (ticket.isReturned ||
                      ticket.isEventCanceled ||
                      ticket.isReturnable)
                    Text(
                      // TODO - ref
                      ticket.isEventCanceled
                          ? S().canceled.toUpperCase()
                          : ticket.isReturned
                              ? S().returned.toUpperCase()
                              : S().postponed.toUpperCase(),
                      style: context.titleMedium.copyWith(
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
              style: context.titleLarge,
              maxLines: 1,
            ),
            const SizedBox(width: 10),
            const VerticalDivider(thickness: 2),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                ticket.isVip ? S().vipVertical : '',
                textAlign: TextAlign.center,
                style: context.titleMedium.copyWith(
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
