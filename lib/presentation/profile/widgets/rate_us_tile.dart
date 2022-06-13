import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class RateUsTile extends StatelessWidget {
  const RateUsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().rateUs,
      onTap: () => LaunchReview.launch(
        // TODO - add ios app id
        androidAppId: 'com.raverteam.raver',
      ),
    );
  }
}
