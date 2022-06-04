import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_partners/presentation/drawer/drawer_tile.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

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

        if (result ?? false) {
          context.read<WelcomeLoaderCubit>().resetState();
          context.read<AuthCubit>().signOut();
          AutoRouter.of(context).replace(const AuthRoute());
        }
      },
    );
  }
}
