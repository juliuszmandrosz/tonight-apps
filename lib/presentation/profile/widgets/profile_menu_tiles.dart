import 'package:flutter/material.dart';
import 'package:raver/presentation/profile/widgets/contact_tile.dart';
import 'package:raver/presentation/profile/widgets/delete_account_tile.dart';
import 'package:raver/presentation/profile/widgets/rate_us_tile.dart';
import 'package:raver/presentation/profile/widgets/sign_out_tile.dart';
import 'package:raver/presentation/profile/widgets/terms_of_service_tile.dart';

class ProfileMenuTiles extends StatelessWidget {
  const ProfileMenuTiles({Key? key}) : super(key: key);

  final settingTiles = const [
    RateUsTile(),
    ContactTile(),
    TermsOfServiceTile(),
    SignOutTile(),
    DeleteAccountTile(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, i) => const Divider(),
      itemCount: settingTiles.length + 1,
      itemBuilder: (context, i) =>
          i >= settingTiles.length ? const SizedBox() : settingTiles[i],
    );
  }
}
