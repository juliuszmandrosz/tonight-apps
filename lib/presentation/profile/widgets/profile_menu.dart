import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_translations/generated/l10n.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileMenuListTile(
            onTap: () => AutoRouter.of(context).push(const AppSettingsRoute()),
            text: S().settings),
        ProfileMenuListTile(
            onTap: () =>
                AutoRouter.of(context).push(const AccountSettingsRoute()),
            text: S().accountSettings),
        ProfileMenuListTile(
          onTap: () {},
          text: S().notifications,
        ),
        ProfileMenuListTile(
          onTap: () {},
          text: S().termsOfService,
        ),
        ProfileMenuListTile(
          onTap: () {},
          text: S().rateUs,
        ),
        ProfileMenuListTile(
          onTap: () => AutoRouter.of(context).push(const AboutUsRoute()),
          text: S().aboutUs,
        ),
      ],
    );
  }
}
