import 'package:common/extensions/build_context_extensions.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:translations/translations.dart';

class EventDetailsBottomBarLocation extends StatelessWidget {
  final Event event;

  const EventDetailsBottomBarLocation({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _launchMap(context),
      icon: const FaIcon(FontAwesomeIcons.locationDot),
    );
  }

  _launchMap(BuildContext context) async {
    final result = await MapsLauncher.launchCoordinates(
      event.getLatitude(),
      event.getLongitude(),
      event.clubName,
    );
    if (context.mounted && !result) {
      context.showSnackbarMessage(S().errorOpeningMaps);
    }
  }
}
