import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/social_icon_with_title.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsAdditionalInfo extends StatelessWidget {
  final Event event;

  const EventDetailsAdditionalInfo({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          RaverHeadline(text: S().additionalInfo),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: event.urlLinks.length != 1
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.center,
        children: event.urlLinks.entries.map((element) {
          if (eventSocialMedia.containsKey(element.key) &&
              element.value.isNotEmpty) {
            return SocialIconWithTitle(
                url: element.value,
                socialMedia: eventSocialMedia[element.key]!);
          }
          //This should never happen, but just in case
          return const SizedBox.shrink();
        }).toList(),
      )
    ]);
  }
}
