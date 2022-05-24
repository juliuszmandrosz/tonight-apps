import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_partners/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_partners/presentation/settings/widgets/settings_tile.dart';

class SignOutTile extends StatelessWidget {
  const SignOutTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      // TODO - add translation
      title: 'Wyloguj się',
      onTap: () {
        context.read<WelcomeLoaderCubit>().resetState();
        context.read<AuthCubit>().signOut();
        AutoRouter.of(context).replace(const AuthRoute());
      },
    );
  }
}
