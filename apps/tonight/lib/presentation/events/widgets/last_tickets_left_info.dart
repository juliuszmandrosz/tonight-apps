import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:translations/translations.dart';

class LastTicketsLeftInfo extends StatelessWidget {
  final Event event;

  const LastTicketsLeftInfo({required this.event, Key? key}) : super(key: key);

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
            const FaIcon(FontAwesomeIcons.circleExclamation),
            const SizedBox(width: 10),
            Text(
              S().lastTicketsInPool,
              style: context.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
