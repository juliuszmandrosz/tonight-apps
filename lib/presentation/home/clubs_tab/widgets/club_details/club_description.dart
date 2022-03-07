import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/commons/icons/raver_toggle_icon.dart';
import 'package:raver/presentation/commons/utils/url_utils.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details/rating_row.dart';

import 'description_row.dart';

class ClubDescription extends StatelessWidget {
  final Club club;

  const ClubDescription({
    Key? key,
    required this.club,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DescriptionRow(
            text: Text(club.clubName, style: theme.textTheme.titleMedium),
            icon: RaverToggleIcon(
              onIcon: const FaIcon(
                FontAwesomeIcons.solidHeart,
                size: 25,
              ),
              offIcon: const FaIcon(
                FontAwesomeIcons.heart,
                size: 25,
              ),
              onPressed: () {},
              value: false,
            ),
          ),
          DescriptionRow(
            text: Text(
              club.locationString,
              style: theme.textTheme.bodyText2,
            ),
            icon: RaverIconButton(
              icon: const FaIcon(
                FontAwesomeIcons.mapMarkerAlt,
                size: 25,
              ),
              onPressed: () async {
                var result = await launchGoogleMaps(
                    club.getLatitude(), club.getLatitude());
                if (result.isSome()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Error while launching google maps"),
                    ),
                  );
                }
              },
            ),
          ),
          RatingRow(
            rating: club.reviewAvg,
            rateCount: club.reviewCount,
          )
        ],
      ),
    );
  }
}
