import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:tonight/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:translations/translations.dart';

class RateUsTile extends StatelessWidget {
  const RateUsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().rateUs,
      onTap: () => LaunchReview.launch(
        iOSAppId: '1629723394',
        androidAppId: 'com.raverteam.tonight',
      ),
    );
  }
}
