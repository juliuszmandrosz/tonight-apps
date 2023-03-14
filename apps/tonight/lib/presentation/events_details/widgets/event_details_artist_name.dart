import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventDetailsArtistName extends StatelessWidget {
  final Event event;

  const EventDetailsArtistName({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
          title: Align(
            alignment: Alignment.centerLeft,
            child:
                TonightHeadline(text: S().artistName, isSmallerVersion: true),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              event.artistName!,
              style: context.subtitle1.copyWith(color: context.secondaryColor),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
