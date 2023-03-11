import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

class EventTile extends StatelessWidget {
  final Event event;

  const EventTile({Key? key, required this.event}) : super(key: key);

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
        children: const [
          Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}
