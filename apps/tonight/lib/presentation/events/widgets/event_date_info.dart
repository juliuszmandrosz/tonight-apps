import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventDateInfo extends StatelessWidget {
  final Event event;

  const EventDateInfo({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.calendar,
          size: 18,
        ),
        const SizedBox(width: 10),
        AutoSizeText(
          context.formatDateTimeToLocaleYMDHM(
            event.eventStartDateTime,
          ),
          textAlign: TextAlign.center,
          style: context.titleMedium,
          maxLines: 1,
        ),
      ],
    );
  }
}
