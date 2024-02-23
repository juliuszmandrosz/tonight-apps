import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventTile extends StatelessWidget {
  final Event event;

  const EventTile({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      onTap: () {
        context.pushRoute(EventDetailsRoute(event: event));
      },
      title: AutoSizeText(
        event.eventName,
        style: context.titleMedium.copyWith(color: context.onSurfaceColor),
        maxLines: 2,
        softWrap: false,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          context.formatDateTimeToLocaleYMDHM(event.eventStartDateTime),
          style: context.titleSmall.copyWith(
            color: context.secondaryColor,
          ),
        ),
      ),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}
