import 'package:common/presentation/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:launch_review/launch_review.dart';
import 'package:translations/translations.dart';

class RateUsDrawerTile extends StatelessWidget {
  const RateUsDrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      label: S().rateUs,
      icon: FontAwesomeIcons.solidStar,
      onTap: () => LaunchReview.launch(
        iOSAppId: '1630748612',
        androidAppId: 'com.raverteam.tonightPartners',
      ),
    );
  }
}
