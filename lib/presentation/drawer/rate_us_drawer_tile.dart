import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:launch_review/launch_review.dart';
import 'package:raver_partners/presentation/drawer/drawer_tile.dart';
import 'package:raver_translations/raver_translations.dart';

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
