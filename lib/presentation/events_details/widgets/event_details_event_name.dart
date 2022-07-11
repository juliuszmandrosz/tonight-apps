import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/events_details/widgets/event_details_favorite_button.dart';
import 'package:raver/presentation/events_details/widgets/event_details_share_button.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

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
        child: RaverHeadline(text: S().eventName, isSmallerVersion: true),
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              EventDetailsShareButton(event: event),
              EventDetailsFavoriteButton(event: event),
            ],
          ),
        ],
      ),
    );
  }
}
