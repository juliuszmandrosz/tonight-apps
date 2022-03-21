import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubLocationRow extends StatelessWidget {
  final Club club;

  const ClubLocationRow({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(club.locationString, style: theme.textTheme.titleMedium),
        RaverIconButton(
          icon: const FaIcon(
            FontAwesomeIcons.mapMarkerAlt,
            size: 25,
          ),
          onPressed: () async {
            var result =
                await launchGoogleMaps(club.getLatitude(), club.getLatitude());
            if (result.isSome()) {
              context.showSnackbarMessage(S().errorOpeningMaps);
            }
          },
        )
      ],
    );
  }
}
