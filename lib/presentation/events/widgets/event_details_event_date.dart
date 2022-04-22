import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

class EventDetailsEventDate extends StatelessWidget {
  final Event event;

  const EventDetailsEventDate({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.formatDateTimeToLocaleYMDHM(event.eventStartDateTime),
          style: textTheme.subtitle1,
        ),
      ],
    );
  }
}
