import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/events/utils/event_details_formatters.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_events/raver_events.dart';

class EventTile extends StatelessWidget {
  final Event event;

  const EventTile({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(EventDetailsRoute(event: event));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: DefaultColors.eventTileColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "${event.eventStartDateTime.day}.${event.eventStartDateTime.month}",
                        style: theme.textTheme.headline2,
                      ),
                      Text(
                        "${event.eventStartDateTime.hour}:${event.eventStartDateTime.minute}",
                        style: theme.textTheme.headline3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          event.eventName,
                          style: theme.textTheme.headline2,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          displayEventTags(context, event),
                          style: theme.textTheme.headline3,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
