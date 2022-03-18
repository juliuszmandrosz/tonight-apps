import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

class EventListTile extends StatelessWidget {
  final Event event;

  const EventListTile({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUpcomingEvent = event.eventEndDateTime.isAfter(DateTime.now());
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: ListTile(
          title: Text(event.eventName, style: theme.textTheme.headline2),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              context.formatDateTimeToLocaleYMD(event.eventStartDateTime),
              style: theme.textTheme.subtitle2,
            ),
          ),
          trailing: isUpcomingEvent
              ? Icon(
                  Icons.mode_edit,
                  color: theme.iconTheme.color,
                  size: 30,
                )
              : Icon(
                  Icons.chevron_right_rounded,
                  color: theme.iconTheme.color,
                  size: 30,
                ),
        ),
      ),
    );
  }
}
