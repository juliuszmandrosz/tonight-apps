import 'package:flutter/material.dart';
import 'package:raver_scanner/presentation/settings/widgets/contact_us_tile.dart';
import 'package:raver_scanner/presentation/settings/widgets/rate_us_tile.dart';
import 'package:raver_scanner/presentation/settings/widgets/sign_out_tile.dart';
import 'package:raver_scanner/presentation/settings/widgets/terms_of_service_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  final settingTiles = const [
    TermsOfServiceTile(),
    RateUsTile(),
    ContactUsTile(),
    SignOutTile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView.separated(
        separatorBuilder: (context, i) => const Divider(),
        itemCount: settingTiles.length + 1,
        itemBuilder: (context, i) =>
            i >= settingTiles.length ? const SizedBox() : settingTiles[i],
      ),
    );
  }
}
