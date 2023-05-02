import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/raver_translations.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().settings,
      onTap: () => context.pushRoute(const AppSettingsRoute()),
    );
  }
}
