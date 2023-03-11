import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventLocationRow extends StatelessWidget {
  final Event event;

  const EventLocationRow({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      onTap: () => _launchMap(context),
      title: AutoSizeText(
        S().location,
        style: context.subtitle1.copyWith(color: context.secondaryColor),
        maxLines: 1,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaverIconButton(
            icon: const FaIcon(FontAwesomeIcons.locationDot),
            onPressed: () => _launchMap(context),
          )
        ],
      ),
    );
  }

  _launchMap(BuildContext context) async {
    final result = await MapsLauncher.launchCoordinates(
      event.getLatitude(),
      event.getLongitude(),
      event.clubName,
    );
    if (!result) {
      context.showSnackbarMessage(S().errorOpeningMaps);
    }
  }
}
