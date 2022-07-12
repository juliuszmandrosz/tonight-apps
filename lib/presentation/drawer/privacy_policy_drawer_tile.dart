import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/privacy_policy/privacy_policy_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/dots_loading_indicator.dart';
import 'package:raver_partners/presentation/drawer/drawer_tile.dart';
import 'package:raver_translations/raver_translations.dart';

class PrivacyPolicyDrawerTile extends StatelessWidget {
  const PrivacyPolicyDrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PrivacyPolicyCubit>(
        param1: context.read<NetworkCheckCubit>(),
      ),
      child: Builder(
        builder: (context) {
          return BlocConsumer<PrivacyPolicyCubit, PrivacyPolicyState>(
            listener: (context, state) {
              state.snackbarMessage.fold(
                () {},
                (message) => context.showSnackbarMessage(message),
              );

              if (state.status.isSuccess() && state.documentUrl.isSome()) {
                launchURL(Uri.parse(state.documentUrl.getOrCrash()));
              }
            },
            builder: (context, state) => state.status.isLoading()
                ? const DotsLoadingIndicator()
                : DrawerTile(
                    label: S().privacyPolicy,
                    icon: FontAwesomeIcons.book,
                    onTap: () =>
                        context.read<PrivacyPolicyCubit>().getPrivacyPolicy(),
                  ),
          );
        },
      ),
    );
  }
}
