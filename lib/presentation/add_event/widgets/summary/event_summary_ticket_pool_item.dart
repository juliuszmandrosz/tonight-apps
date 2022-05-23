import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

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
            '${getCurrencySymbolFromCode(ticketPool.currency)}, '
            '${S().vip.toLowerCase()} ${ticketPool.vipPrice}'
            '${getCurrencySymbolFromCode(ticketPool.currency)}',
            style: context.subtitle1,
            maxLines: 1,
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
