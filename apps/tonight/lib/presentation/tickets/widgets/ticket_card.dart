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
    required this.ticket,
    super.key,
  });

  String get additionalInfo {
    if (ticket.isEventCanceled) {
      return S().canceled;
    }

    if (ticket.isReturned) {
      return S().returned;
    }

    if (ticket.isReturnable) {
      return S().postponed;
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    final hasAdditionalInfo =
        ticket.isReturned || ticket.isEventCanceled || ticket.isReturnable;
    final showPulsatingDot = ticket.isActivated && ticket.isValid;
    return InkWell(
      onTap: () =>
          ticket.isExpired && ticket.eventEndDateTime.isBefore(DateTime.now())
              ? context.pushRoute(ReviewRoute(eventId: ticket.eventId))
              : context.pushRoute(ActivateTicketRoute(ticket: ticket)),
      child: TicketWidget(
        height: hasAdditionalInfo ? 140 : 120,
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
                    '${ticket.quantity}x ${ticket.eventName}',
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: context.titleMedium.copyWith(
                      decoration:
                          !ticket.isValid ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  if (!hasAdditionalInfo)
                    AutoSizeText(
                      ticket.clubName,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: context.bodyLarge.copyWith(
                        color: context.secondaryColor,
                      ),
                    ),
                  AutoSizeText(
                    context.formatDateTimeToLocaleYMDHM(
                      ticket.eventStartDateTime,
                    ),
                    style: context.labelSmall
                        .copyWith(color: context.secondaryColor),
                    maxLines: 1,
                  ),
                  if (hasAdditionalInfo)
                    Text(
                      additionalInfo.toUpperCase(),
                      style: context.titleMedium.copyWith(
                        color: context.tertiaryColor,
                      ),
                    )
                ],
              ),
            ),
            if (showPulsatingDot)
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: PulsatingDot(
                    color: context.primaryColor,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
