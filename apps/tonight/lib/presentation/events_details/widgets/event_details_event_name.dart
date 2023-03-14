import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/events_details/widgets/event_details_favorite_button.dart';
import 'package:translations/translations.dart';

class EventDetailsEventName extends StatelessWidget {
  final Event event;

  const EventDetailsEventName({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Align(
        alignment: Alignment.centerLeft,
        child: TonightHeadline(text: S().eventName, isSmallerVersion: true),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          event.eventName,
          style: context.subtitle1.copyWith(color: context.secondaryColor),
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EventDetailsFavoriteButton(event: event),
        ],
      ),
    );
  }
}
