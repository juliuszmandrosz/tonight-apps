import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_translations/generated/l10n.dart';

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(
        title: S().accountSettings,
      ),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Column(
            children: [
              ListTile(
                title: Text(S().email),
                trailing: Text(state.user.email),
              ),
              ListTile(
                title: Text(S().username),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.user.username),
                    const Icon(Icons.keyboard_arrow_right)
                  ],
                ),
                onTap: () =>
                    AutoRouter.of(context).push(const UpdateUsernameRoute()),
              ),
              !state.isFromOauth
                  ? ListTile(
                      onTap: () => AutoRouter.of(context)
                          .push(const ChangePasswordRoute()),
                      title: Text(S().password),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(S().changePasswordTitle),
                          const Icon(Icons.keyboard_arrow_right),
                        ],
                      ),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }
}
