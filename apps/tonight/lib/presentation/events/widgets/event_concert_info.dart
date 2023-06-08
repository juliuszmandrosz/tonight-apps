import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            FaIcon(
              FontAwesomeIcons.microphoneLines,
              size: 18,
              color: context.secondaryColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                '${S().concert} - ${event.artistName}',
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
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
