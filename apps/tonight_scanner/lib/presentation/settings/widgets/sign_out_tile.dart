import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_scanner/presentation/settings/widgets/settings_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class SignOutTile extends StatelessWidget {
  const SignOutTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      title: S().signOut,
      onTap: () async {
        final result = await context.showConfirmationDialogWithCustomMessage(
          S().confirmSignOut,
        );

        if (result ?? false) {
          context.read<AuthCubit>().signOut();
          context.replaceRoute(const SignInRoute());
        }
      },
    );
  }
}
