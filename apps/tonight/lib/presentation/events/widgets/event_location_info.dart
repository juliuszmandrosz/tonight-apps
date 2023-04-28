import 'package:common/extensions/typography_extensions.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventLocationInfo extends StatelessWidget {
  final Event event;

  const EventLocationInfo({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.locationDot,
              size: 18,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                event.locationString!,
                style: context.titleSmall,
                softWrap: false,
                overflow: TextOverflow.fade,
                maxLines: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
