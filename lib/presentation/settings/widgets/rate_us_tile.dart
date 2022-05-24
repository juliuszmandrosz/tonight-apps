import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/settings/widgets/settings_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class RateUsTile extends StatelessWidget {
  const RateUsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      title: S().rateUs,
      onTap: () {},
    );
  }
}
