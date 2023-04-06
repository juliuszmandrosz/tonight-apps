import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/drawer/contact_tile.dart';
import 'package:tonight/presentation/drawer/delete_account_tile.dart';
import 'package:tonight/presentation/drawer/privacy_policy_tile.dart';
import 'package:tonight/presentation/drawer/rate_us_tile.dart';
import 'package:tonight/presentation/drawer/sign_out_tile.dart';
import 'package:tonight/presentation/drawer/terms_of_service_tile.dart';

class TonightDrawerTiles extends StatelessWidget {
  const TonightDrawerTiles({Key? key}) : super(key: key);

  final tiles = const [
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
            separatorBuilder: (context, i) => const Divider(height: 30),
            itemCount: tiles.length + 1,
            itemBuilder: (context, i) =>
                i >= tiles.length ? const SizedBox() : tiles[i],
          ),
        );
      }),
    );
  }
}
