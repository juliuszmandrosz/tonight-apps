import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_partners/presentation/drawer/drawer_tile.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class TermsOfServiceDrawerTile extends StatelessWidget {
  const TermsOfServiceDrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      label: S().termsOfService,
      icon: FontAwesomeIcons.book,
      onTap: () => context.pushRoute(const TermsOfServiceRoute()),
    );
  }
}
