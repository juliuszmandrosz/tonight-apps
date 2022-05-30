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
      subtitle: _getSubtitle(context),
      trailing: _getTrailing(context),
    );
  }

  Text _getTitle(BuildContext context) {
    final title = '${S().poolNo} ${ticketPool.poolNumber}';

    if (ticketPool.isCurrent) {
      return Text(
        title,
        style: context.subtitle1.copyWith(color: context.primaryColor),
      );
    }

    if (ticketPool.isSoldOut) {
      return Text(
        title,
        style: context.subtitle1.copyWith(
          color: context.outlineColor,
          decoration: TextDecoration.lineThrough,
          decorationThickness: 2,
        ),
      );
    }
    return Text(
      title,
      style: context.subtitle1.copyWith(color: context.secondaryColor),
    );
  }

  Widget? _getSubtitle(BuildContext context) {
    if (ticketPool.isSoldOut) {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          S().soldOut.toUpperCase(),
          style: context.bodyText1.copyWith(color: context.tertiaryColor),
        ),
      );
    }
    if (_shouldShowTicketsLeftMessage()) {
      final ticketsLeftCount =
          ticketPool.ticketQuantity - ticketPool.ticketsSold;
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.fire,
              color: Colors.red.lighten(),
              size: 18,
            ),
            const SizedBox(width: 10),
            Text(
              // TODO - add translation
              'Pozostały ostatnie bilety!',
              style: context.bodyText1,
            ),
          ],
        ),
      );
    }

    return null;
  }

  bool _shouldShowTicketsLeftMessage() {
    if (!ticketPool.isCurrent) return false;

    final ticketQuantity = ticketPool.ticketQuantity;
    final ticketsSold = ticketPool.ticketsSold;

    final minTicketCountToShowMessage =
        ticketQuantity <= 20 ? ticketQuantity : (ticketQuantity * 0.2).round();

    return minTicketCountToShowMessage >= ticketQuantity - ticketsSold;
  }

  Text _getTrailing(BuildContext context) {
    if (ticketPool.isCurrent) {
      return Text(
        '${ticketPool.ticketPrice}'
        '${getCurrencySymbolFromCode(ticketPool.currency)}',
        style: context.subtitle1.copyWith(color: context.primaryColor),
      );
    }

    if (ticketPool.isSoldOut) {
      return Text(
        '${ticketPool.ticketPrice}'
        '${getCurrencySymbolFromCode(ticketPool.currency)}',
        style: context.subtitle1.copyWith(
          decorationThickness: 2,
          decoration: TextDecoration.lineThrough,
          color: context.outlineColor,
        ),
      );
    }

    return Text(
      '${ticketPool.ticketPrice}'
      '${getCurrencySymbolFromCode(ticketPool.currency)}',
      style: context.subtitle1.copyWith(color: context.secondaryColor),
    );
  }
}
