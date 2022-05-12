import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class EventListTile extends StatelessWidget {
  final Event event;

  const EventListTile({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPastEvent = event.eventEndDateTime.isBefore(DateTime.now());
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => isPastEvent
            ? AutoRouter.of(context).push(PastEventDetailsRoute(event: event))
            : AutoRouter.of(context).push(EventOverviewRoute(event: event)),
        child: ListTile(
          title: Text(
            event.eventName,
            style: theme.textTheme.headline2,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              context.formatDateTimeToLocaleYMDHM(event.eventStartDateTime),
              style: theme.textTheme.subtitle2,
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chevron_right_rounded,
                color: theme.iconTheme.color,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
