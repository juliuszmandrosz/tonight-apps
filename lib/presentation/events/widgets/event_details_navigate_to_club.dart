import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

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
            final result = await launchGoogleMaps(lat, lng);

            if (result.isSome()) {
              context.showSnackbarMessage(S().errorOpeningMaps);
            }
          },
          // TODO - change to navigation based on user location
          child: Text(
            S().findInMap,
            style: textTheme.headline3,
          ),
        ),
      ],
    );
  }
}
