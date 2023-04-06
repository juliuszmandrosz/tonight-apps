import 'package:auto_route/auto_route.dart';
import 'package:common/presentation/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:translations/translations.dart';

class ContactDrawerTile extends StatelessWidget {
  const ContactDrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      label: S().contact,
      icon: FontAwesomeIcons.phone,
      onTap: () => context.pushRoute(const ContactRoute()),
    );
  }
}
