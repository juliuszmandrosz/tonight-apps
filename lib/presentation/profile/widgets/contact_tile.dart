import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_translations/raver_translations.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().contact,
      onTap: () => AutoRouter.of(context).push(const ContactRoute()),
    );
  }
}
