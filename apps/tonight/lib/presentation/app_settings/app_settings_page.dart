import 'package:flutter/material.dart';
import 'package:tonight/presentation/app_settings/widgets/change_locale.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:translations/generated/l10n.dart';

class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(
        title: S().settings,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: ChangeLocale(),
      ),
    );
  }
}
