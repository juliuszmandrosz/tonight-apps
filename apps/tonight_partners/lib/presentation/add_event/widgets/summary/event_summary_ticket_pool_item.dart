import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class EventSummaryTicketPoolItem extends StatelessWidget {
  final TicketPool ticketPool;

  const EventSummaryTicketPoolItem({
    required this.ticketPool,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            '${ticketPool.poolNumber} '
                '${S().pool.toLowerCase()} - ${ticketPool.ticketQuantity} '
                '${S().tickets(ticketPool.ticketQuantity).toLowerCase()}, '
                '${S().entry.toLowerCase()} ${ticketPool.ticketPrice}'
                '${getCurrencySymbolFromCode(ticketPool.currency)}'
                '${ticketPool.isVipEnabled
                ? ', ${S().vip.toLowerCase()}'
                : ''} ${ticketPool.vipPrice ?? ''}'
                '${ticketPool.isVipEnabled ? getCurrencySymbolFromCode(
                ticketPool.currency) : ''}',
            style: context.titleMedium.copyWith(color: context.secondaryColor),
            maxLines: 1,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
