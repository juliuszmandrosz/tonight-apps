import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:common/common.dart';
import 'package:tonight_scanner/application/privacy_policy/privacy_policy_cubit.dart';
import 'package:tonight_scanner/injection.dart';
import 'package:tonight_scanner/presentation/settings/widgets/settings_tile.dart';
import 'package:translations/translations.dart';

class PrivacyPolicyTile extends StatelessWidget {
  const PrivacyPolicyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PrivacyPolicyCubit>(
        param1: context.read<NetworkCheckCubit>(),
      ),
      child: Builder(builder: (context) {
        return BlocListener<PrivacyPolicyCubit, PrivacyPolicyState>(
          listener: (context, state) {
            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );

            if (state.status.isSuccess() && state.documentUrl.isSome()) {
              launchURL(Uri.parse(state.documentUrl.getOrCrash()));
            }

            state.status.isLoading()
                ? context.loaderOverlay.show()
                : context.loaderOverlay.hide();
          },
          child: SettingsTile(
            title: S().privacyPolicy,
            onTap: () => context.read<PrivacyPolicyCubit>().getPrivacyPolicy(),
          ),
        );
      }),
    );
  }
}
