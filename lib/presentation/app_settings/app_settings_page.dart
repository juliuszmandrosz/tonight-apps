import 'package:flutter/material.dart';
import 'package:raver/presentation/app_settings/widgets/change_locale.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: ChangeLocale(),
      ),
    );
  }
}
