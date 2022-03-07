import 'package:flutter/material.dart';
import 'package:raver/domain/events/event_entity.dart';

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
          event.eventDateTime,
          style: textTheme.subtitle1,
        ),
      ],
    );
  }
}
