import 'package:flutter/material.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/presentation/commons/extensions/build_context_extensions.dart';

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
          context.formatDateTimeToLocaleYMDHM(event.eventDateTime),
          style: textTheme.subtitle1,
        ),
      ],
    );
  }
}
