import 'package:flutter/material.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/commons/utils/url_utils.dart';

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
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text(S().errorOpeningMaps)),
                );
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
