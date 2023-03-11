import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
            style: context.subtitle1,
            maxLines: 2,
          ),
        ),
        RaverIconButton(
          icon: const FaIcon(FontAwesomeIcons.locationDot),
          onPressed: () async {
            var result = await MapsLauncher.launchCoordinates(
              club.getLatitude(),
              club.getLongitude(),
              club.clubName,
            );
            if (!result) {
              context.showSnackbarMessage(S().errorOpeningMaps);
            }
          },
        )
      ],
    );
  }
}
