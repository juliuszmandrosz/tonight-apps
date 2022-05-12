import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
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
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: theme.colorScheme.tertiaryContainer,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: _getTitle(theme),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _getSubtitle(theme),
          ),
          trailing: _getTrailing(theme),
        ),
      ),
    );
  }

  Widget _getTrailing(ThemeData theme) {
    if (ticketPool.isSoldOut) {
      return const SizedBox();
    }

    if (ticketPool.ticketsSold > 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => onTicketPoolEdited(ticketPool),
            icon: Icon(
              Icons.mode_edit,
              color: theme.iconTheme.color,
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
          icon: Icon(
            Icons.mode_edit,
            color: theme.iconTheme.color,
            size: 32,
          ),
        ),
        IconButton(
          onPressed: () => onTicketPoolDeleted(ticketPool),
          icon: Icon(
            Icons.delete_rounded,
            color: theme.iconTheme.color,
            size: 32,
          ),
        ),
      ],
    );
  }

  AutoSizeText _getTitle(ThemeData theme) {
    return AutoSizeText(
      '${ticketPool.poolNumber} ${S().pool.toLowerCase()} - '
      '${ticketPool.ticketPrice}'
      '${getCurrencySymbolFromCode(ticketPool.currency)}',
      style: theme.textTheme.headline2!.copyWith(
        color: ticketPool.isCurrent && ticketPool.ticketsSold > 0
            ? theme.colorScheme.primary
            : theme.textTheme.headline2!.color,
        decoration: ticketPool.isSoldOut
            ? TextDecoration.lineThrough
            : TextDecoration.none,
        decorationThickness: 2,
      ),
      maxLines: 1,
    );
  }

  AutoSizeText _getSubtitle(ThemeData theme) {
    if (ticketPool.isSoldOut) {
      return AutoSizeText(
        S().soldOut.toUpperCase(),
        style: theme.textTheme.subtitle1!.copyWith(color: Colors.red),
      );
    }

    if (ticketPool.isCurrent && ticketPool.ticketsSold > 0) {
      return AutoSizeText(
        '${ticketPool.ticketsSold}/${ticketPool.ticketQuantity} '
        '${S().ticketsSold.toLowerCase()}, '
        '${S().vip} ${ticketPool.vipPrice}'
        '${getCurrencySymbolFromCode(ticketPool.currency)}',
        style: theme.textTheme.subtitle1!.copyWith(
          color: theme.colorScheme.onTertiaryContainer,
        ),
        maxLines: 1,
      );
    }

    return AutoSizeText(
      '${ticketPool.ticketQuantity} '
      '${S().tickets(ticketPool.ticketQuantity).toLowerCase()}, '
      '${S().vip} ${ticketPool.vipPrice}'
      '${getCurrencySymbolFromCode(ticketPool.currency)}',
      style: theme.textTheme.subtitle1!.copyWith(
        color: theme.colorScheme.onTertiaryContainer,
      ),
      maxLines: 1,
    );
  }
}
