import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/color_extensions.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/typography_extensions.dart';
import 'package:raver_translations/raver_translations.dart';

class EventTicketPoolCard extends StatelessWidget {
  final TicketPool ticketPool;
  final Function(TicketPool) onTicketPoolEdited;
  final Function(TicketPool) onTicketPoolDeleted;

  const EventTicketPoolCard({
    required this.ticketPool,
    required this.onTicketPoolEdited,
    required this.onTicketPoolDeleted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: _getTitle(context),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _getSubtitle(context),
          ),
          trailing: _getTrailing(),
        ),
      ),
    );
  }

  Widget _getTrailing() {
    if (ticketPool.isSoldOut) {
      return const SizedBox();
    }

    if (ticketPool.ticketsSold > 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => onTicketPoolEdited(ticketPool),
            icon: const Icon(
              Icons.mode_edit,
              size: 32,
            ),
          )
        ],
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => onTicketPoolEdited(ticketPool),
          icon: const Icon(
            Icons.mode_edit,
            size: 32,
          ),
        ),
        IconButton(
          onPressed: () => onTicketPoolDeleted(ticketPool),
          icon: const Icon(
            Icons.delete_rounded,
            size: 32,
          ),
        ),
      ],
    );
  }

  AutoSizeText _getTitle(BuildContext context) {
    return AutoSizeText(
      '${ticketPool.poolNumber} ${S().pool.toLowerCase()} - '
      '${ticketPool.ticketPrice}'
      '${getCurrencySymbolFromCode(ticketPool.currency)}',
      style: context.headline5.copyWith(
        color: ticketPool.isCurrent && ticketPool.ticketsSold > 0
            ? context.primaryColor
            : context.onSurfaceColor,
        decoration: ticketPool.isSoldOut
            ? TextDecoration.lineThrough
            : TextDecoration.none,
        decorationThickness: 2,
      ),
      maxLines: 1,
    );
  }

  AutoSizeText _getSubtitle(BuildContext context) {
    if (ticketPool.isSoldOut) {
      return AutoSizeText(
        S().soldOut.toUpperCase(),
        style: context.subtitle1.copyWith(color: context.tertiaryColor),
        maxLines: 1,
      );
    }

    if (ticketPool.isCurrent && ticketPool.ticketsSold > 0) {
      return AutoSizeText(
        '${ticketPool.ticketsSold}/${ticketPool.ticketQuantity} '
        '${S().ticketsSold.toLowerCase()}, '
        '${S().vip} ${ticketPool.vipPrice}'
        '${getCurrencySymbolFromCode(ticketPool.currency)}',
        style: context.subtitle1.copyWith(
          color: context.onSurfaceVariantColor,
        ),
        maxLines: 1,
      );
    }

    return AutoSizeText(
      '${ticketPool.ticketQuantity} '
      '${S().tickets(ticketPool.ticketQuantity).toLowerCase()}, '
      '${S().vip} ${ticketPool.vipPrice}'
      '${getCurrencySymbolFromCode(ticketPool.currency)}',
      style: context.subtitle1.copyWith(
        color: context.onSurfaceColor,
      ),
      maxLines: 1,
    );
  }
}
