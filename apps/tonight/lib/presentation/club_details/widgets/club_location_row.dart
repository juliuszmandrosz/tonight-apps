import 'package:auto_size_text/auto_size_text.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:tonight/presentation/commons/icons/tonight_icon_button.dart';
import 'package:translations/translations.dart';

class ClubLocationRow extends StatelessWidget {
  final Club club;

  const ClubLocationRow({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AutoSizeText(
            club.locationString,
            style: context.titleMedium,
            maxLines: 2,
          ),
        ),
        TonightIconButton(
          icon: const FaIcon(FontAwesomeIcons.locationDot),
          onPressed: () async {
            var result = await MapsLauncher.launchCoordinates(
              club.getLatitude(),
              club.getLongitude(),
              club.clubName,
            );
            if (context.mounted && !result) {
              context.showSnackbarMessage(S().errorOpeningMaps);
            }
          },
        )
      ],
    );
  }
}
