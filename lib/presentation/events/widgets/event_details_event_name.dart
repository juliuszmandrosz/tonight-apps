import 'package:flutter/material.dart';
import 'package:raver/presentation/home/events_tab/widgets/event_details_favorite_button.dart';
import 'package:raver_events/raver_events.dart';

class EventDetailsEventName extends StatelessWidget {
  final Event event;

  const EventDetailsEventName({
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
          event.eventName,
          style: textTheme.headline1,
        ),
        const SizedBox(width: 10),
        EventDetailsFavoriteButton(eventId: event.id)
      ],
    );
  }
}
