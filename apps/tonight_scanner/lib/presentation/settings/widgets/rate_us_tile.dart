import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:tonight_scanner/presentation/settings/widgets/settings_tile.dart';
import 'package:translations/raver_translations.dart';

class RateUsTile extends StatelessWidget {
  const RateUsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      title: S().rateUs,
      onTap: () => LaunchReview.launch(
        iOSAppId: '1631430958',
        androidAppId: 'com.raverteam.tonightScanner',
      ),
    );
  }
}
