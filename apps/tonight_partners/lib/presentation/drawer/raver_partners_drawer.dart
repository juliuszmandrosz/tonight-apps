import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/presentation/drawer/contact_drawer_tile.dart';
import 'package:raver_partners/presentation/drawer/discounts_drawer_tile.dart';
import 'package:raver_partners/presentation/drawer/rate_us_drawer_tile.dart';
import 'package:raver_partners/presentation/drawer/raver_partners_drawer_header.dart';
import 'package:raver_partners/presentation/drawer/sign_out_drawer_tile.dart';
import 'package:raver_partners/presentation/drawer/social_media/social_media_row.dart';
import 'package:raver_partners/presentation/drawer/privacy_policy_drawer_tile.dart';

class RaverPartnersDrawer extends StatelessWidget {
  const RaverPartnersDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: context.surfaceColor,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 80, 24, 0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              RaverPartnersDrawerHeader(),
              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 30),
              DiscountsDrawerTile(),
              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 30),
              ContactDrawerTile(),
              SizedBox(height: 30),
              RateUsDrawerTile(),
              SizedBox(height: 30),
              PrivacyPolicyDrawerTile(),
              SizedBox(height: 30),
              SignOutDrawerTile(),
              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 10),
              SocialMediaRow(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
