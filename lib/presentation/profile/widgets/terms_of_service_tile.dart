import 'package:flutter/material.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class TermsOfServiceTile extends StatelessWidget {
  const TermsOfServiceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().termsOfService,
      // onTap: () => AutoRouter.of(context).push(const TermsOfServiceRoute()),
      onTap: () {},
    );
  }
}
