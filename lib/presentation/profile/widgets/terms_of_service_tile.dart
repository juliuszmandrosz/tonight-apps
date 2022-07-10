import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:raver/presentation/profile/widgets/profile_menu_list_tile.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TermsOfServiceTile extends StatelessWidget {
  const TermsOfServiceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<TermsOfServiceCubit, TermsOfServiceState>(
      listener: (context, state) {
        state.snackbarMessage.fold(
          () {},
          (message) => context.showSnackbarMessage(message),
        );

        if (state.status.isSuccess() && state.termsOfServiceUrl.isSome()) {
          launchURL(Uri.parse(state.termsOfServiceUrl.getOrCrash()));
        }

        state.status.isLoading()
            ? context.loaderOverlay.show()
            : context.loaderOverlay.hide();
      },
      child: ProfileMenuListTile(
        title: S().termsOfService,
        onTap: () => context.read<TermsOfServiceCubit>().getTermsOfService(),
      ),
    );
  }
}
