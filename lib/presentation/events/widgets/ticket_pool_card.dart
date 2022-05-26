import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketPoolCard extends StatelessWidget {
  final TicketPool ticketPool;

  const TicketPoolCard({Key? key, required this.ticketPool}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Card(
            color: !ticketPool.isCurrent ? Colors.grey.shade300 : null,
            elevation: 5,
            child: ListTile(
              title: Text("${S().poolNo} ${ticketPool.poolNumber}"),
              trailing: Text(
                '${ticketPool.ticketPrice} ${getCurrencySymbolFromCode(ticketPool.currency)}',
                style: theme.textTheme.headline2!.copyWith(
                  decoration: ticketPool.isSoldOut
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              subtitle: _getSubtitle(theme),
            ),
          ),
        ),
      ],
    );
  }

  Widget? _getSubtitle(ThemeData themeData) {
    if (ticketPool.isSoldOut) {
      return Text(
        S().soldOut,
        style: themeData.textTheme.subtitle1!.copyWith(
          color: Colors.red,
          fontStyle: FontStyle.italic,
        ),
      );
    }
    if (_shouldShowTicketsLeftMessage()) {
      final ticketsLeftCount =
          ticketPool.ticketQuantity - ticketPool.ticketsSold;
      return Row(
        children: [
          const FaIcon(
            FontAwesomeIcons.fireAlt,
            color: Colors.red,
          ),
          const SizedBox(
            width: 5,
          ),
          Text("$ticketsLeftCount ${S().ticketsLeft(ticketsLeftCount)}"),
        ],
      );
    }
  }

  bool _shouldShowTicketsLeftMessage() {
    final minTicketCountToShowMessage =
        (ticketPool.ticketQuantity * 0.2).round();
    return minTicketCountToShowMessage >=
        ticketPool.ticketQuantity - ticketPool.ticketsSold;
  }
}
