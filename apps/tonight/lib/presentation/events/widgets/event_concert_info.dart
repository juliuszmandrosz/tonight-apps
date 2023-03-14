import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:translations/translations.dart';

class EventConcertInfo extends StatelessWidget {
  final Event event;

  const EventConcertInfo({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.microphoneLines,
              size: 18,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                '${S().concert} - ${event.artistName}',
                style: context.subtitle1,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
