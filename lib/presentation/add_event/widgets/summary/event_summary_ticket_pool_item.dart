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
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '${ticketPool.poolNumber} '
            '${S().pool.toLowerCase()} - ${ticketPool.ticketQuantity} '
            '${S().tickets(ticketPool.ticketQuantity).toLowerCase()}, '
            '${ticketPool.ticketPrice} '
            '${getCurrencySymbolFromCode(ticketPool.currency)}',
            style: textTheme.subtitle1,
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
