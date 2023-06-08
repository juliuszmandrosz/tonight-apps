import 'package:common/common.dart';
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
            FaIcon(
              FontAwesomeIcons.locationDot,
              size: 18,
              color: context.secondaryColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                event.locationString!,
                softWrap: false,
                overflow: TextOverflow.fade,
                maxLines: 1,
                style: context.titleSmall.copyWith(
                  color: context.secondaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
