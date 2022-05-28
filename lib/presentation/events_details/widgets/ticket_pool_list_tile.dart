import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketPoolListTile extends StatelessWidget {
  final TicketPool ticketPool;

  const TicketPoolListTile({Key? key, required this.ticketPool})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: _getTitle(context),
      trailing: Text(
        '${ticketPool.ticketPrice} ${getCurrencySymbolFromCode(ticketPool.currency)}',
        style: context.subtitle1.copyWith(
          decoration: ticketPool.isSoldOut
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      subtitle: _getSubtitle(context),
    );
  }

  Text _getTitle(BuildContext context) {
    final title = '${S().poolNo} ${ticketPool.poolNumber}';

    return ticketPool.isCurrent
        ? Text(
            title,
            style: context.subtitle1.copyWith(color: context.primaryColor),
          )
        : Text(
            title,
            style: context.subtitle1.copyWith(color: context.secondaryColor),
          );
  }

  Widget? _getSubtitle(BuildContext context) {
    if (ticketPool.isSoldOut) {
      return Text(
        S().soldOut,
        style: context.subtitle1.copyWith(
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
          FaIcon(
            FontAwesomeIcons.fire,
            color: Colors.red.lighten(),
          ),
          const SizedBox(
            width: 5,
          ),
          Text("$ticketsLeftCount ${S().ticketsLeft(ticketsLeftCount)}"),
        ],
      );
    }

    return null;
  }

  bool _shouldShowTicketsLeftMessage() {
    final minTicketCountToShowMessage =
        (ticketPool.ticketQuantity * 0.2).round();
    return minTicketCountToShowMessage >=
        ticketPool.ticketQuantity - ticketPool.ticketsSold;
  }
}
