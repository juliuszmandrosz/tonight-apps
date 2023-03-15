import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/events_details/utils/event_details_formatters.dart';

class EventTagsInfo extends StatelessWidget {
  final Event event;
  final EventTickets? eventTickets;

  const EventTagsInfo({
    required this.event,
    this.eventTickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.circleInfo,
              size: 18,
            ),
            const SizedBox(width: 10),
            AutoSizeText(
              displayEventTags(
                context,
                event,
                eventTickets,
              ),
              style: context.titleMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ],
    );
  }
}
