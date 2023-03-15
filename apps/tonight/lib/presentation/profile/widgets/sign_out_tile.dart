import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class SignOutTile extends StatelessWidget {
  const SignOutTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileMenuListTile(
      title: S().signOut,
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
