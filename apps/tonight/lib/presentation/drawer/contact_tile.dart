import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      icon: FontAwesomeIcons.phone,
      label: S().contact,
      onTap: () => AutoRouter.of(context).push(const ContactRoute()),
    );
  }
}
