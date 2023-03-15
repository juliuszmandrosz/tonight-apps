import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/presentation/drawer/drawer_tile.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:translations/translations.dart';

class SignOutDrawerTile extends StatelessWidget {
  const SignOutDrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerTile(
      label: S().signOut,
      icon: FontAwesomeIcons.arrowRightFromBracket,
      onTap: () async {
        final result = await context.showConfirmationDialogWithCustomMessage(
          S().confirmSignOut,
        );

        if (context.mounted && (result ?? false)) {
          context.read<AuthCubit>().signOut();
          context.replaceRoute(const SignInRoute());
        }
      },
    );
  }
}
