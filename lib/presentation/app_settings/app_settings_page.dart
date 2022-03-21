import 'package:flutter/material.dart';
import 'package:raver/presentation/app_settings/widgets/menu_title_section.dart';
import 'package:raver/presentation/app_settings/widgets/theme_settings_list_tile.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver_translations/generated/l10n.dart';

class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(
        title: S().settings,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuTitleSection(text: S().theme),
          const ThemeSettingsListTile()
        ],
      ),
    );
  }
}
