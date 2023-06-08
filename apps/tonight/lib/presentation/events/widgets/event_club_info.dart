import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventClubInfo extends StatelessWidget {
  final Event event;

  const EventClubInfo({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(
          FontAwesomeIcons.building,
          size: 18,
          color: context.secondaryColor,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            event.clubName,
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
            style: context.titleSmall.copyWith(
              color: context.secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
