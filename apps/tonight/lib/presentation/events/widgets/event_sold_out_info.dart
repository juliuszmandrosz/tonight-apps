import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class EventSoldOutInfo extends StatelessWidget {
  final Event event;

  const EventSoldOutInfo({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.surfaceColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.circleXmark,
              size: 18,
            ),
            const SizedBox(width: 10),
            Text(
              S().soldOut.toUpperCase(),
              style: context.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
