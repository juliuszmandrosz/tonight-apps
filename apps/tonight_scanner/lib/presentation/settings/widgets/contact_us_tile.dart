import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_scanner/presentation/settings/widgets/settings_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class ContactUsTile extends StatelessWidget {
  const ContactUsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      title: S().contact,
      onTap: () => context.pushRoute(const ContactRoute()),
    );
  }
}
