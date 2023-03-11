import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/profile/widgets/contact_tile.dart';
import 'package:raver/presentation/profile/widgets/delete_account_tile.dart';
import 'package:raver/presentation/profile/widgets/privacy_policy_tile.dart';
import 'package:raver/presentation/profile/widgets/rate_us_tile.dart';
import 'package:raver/presentation/profile/widgets/sign_out_tile.dart';
import 'package:raver/presentation/profile/widgets/terms_of_service_tile.dart';
import 'package:raver_common/raver_common.dart';

class ProfileMenuTiles extends StatelessWidget {
  const ProfileMenuTiles({Key? key}) : super(key: key);

  final settingTiles = const [
    RateUsTile(),
    ContactTile(),
    TermsOfServiceTile(),
    PrivacyPolicyTile(),
    SignOutTile(),
    DeleteAccountTile(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TermsOfServiceCubit>(
        param1: context.read<NetworkCheckCubit>(),
      ),
      child: Builder(builder: (context) {
        return BlocListener<TermsOfServiceCubit, TermsOfServiceState>(
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
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: settingTiles.length + 1,
            itemBuilder: (context, i) =>
                i >= settingTiles.length ? const SizedBox() : settingTiles[i],
          ),
        );
      }),
    );
  }
}
