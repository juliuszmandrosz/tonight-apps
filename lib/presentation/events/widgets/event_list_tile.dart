import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/presentation/events/widgets/event_share_button.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class EventListTile extends StatelessWidget {
  final Event event;

  const EventListTile({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPastEvent = event.eventEndDateTime.isBefore(DateTime.now());
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      onTap: () => isPastEvent
          ? context.pushRoute(PastEventDetailsRoute(event: event))
          : context.pushRoute(
              EventOverviewRoute(
                event: event,
                blocContext: context,
              ),
            ),
      title: Text(
        event.eventName,
        style: context.headline6.copyWith(color: context.onSurfaceColor),
        maxLines: 2,
        softWrap: false,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          context.formatDateTimeToLocaleYMDHM(event.eventStartDateTime),
          style: context.subtitle1.copyWith(
            color: context.secondaryColor,
          ),
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [EventShareButton(event: event)],
      ),
    );
  }
}
