import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_partners/presentation/drawer/drawer_tile.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class DiscountsDrawerTile extends StatelessWidget {
  const DiscountsDrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      // TODO - add translation
      label: 'Discounts',
      icon: FontAwesomeIcons.percent,
      onTap: () => context.pushRoute(const DiscountsRoute()),
    );
  }
}
