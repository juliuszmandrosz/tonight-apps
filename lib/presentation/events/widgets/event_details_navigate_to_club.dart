import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class EventDetailsNavigateToClub extends StatelessWidget {
  final Event event;

  const EventDetailsNavigateToClub({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final lat = event.getLatitude();
    final lng = event.getLongitude();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () async {
            final url = Platform.isIOS
                ? 'https://maps.apple.com/?q=$lat,$lng'
                : 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';

            try {
              await launch(url);
            } on PlatformException {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('Error opening maps')),
                );
            }
          },
          // TODO - change to navigation based on user location
          child: Text(
            'Find in maps',
            style: textTheme.headline3,
          ),
        ),
      ],
    );
  }
}
