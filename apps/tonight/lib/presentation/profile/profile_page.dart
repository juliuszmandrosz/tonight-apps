import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/profile/profile_cubit.dart';
import 'package:tonight/presentation/core/ticket_logo_animation.dart';
import 'package:tonight/presentation/profile/widgets/profile_menu_details_row.dart';
import 'package:tonight/presentation/profile/widgets/profile_menu_tiles.dart';
import 'package:tonight/presentation/profile/widgets/profile_user_picture_.dart';
import 'package:tonight/presentation/profile/widgets/username_row.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayOpacity: .7,
      overlayWidget: const TicketLogoAnimation(),
      overlayColor: context.shadowColor,
      useDefaultLoading: false,
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listenWhen: (previous, current) =>
            previous.initialStatus != current.initialStatus ||
            previous.deletingAccountStatus != current.deletingAccountStatus ||
            previous.snackbarMessage != current.snackbarMessage,
        listener: (context, state) {
          state.deletingAccountStatus.isLoading()
              ? context.loaderOverlay.show()
              : context.loaderOverlay.hide();

          state.snackbarMessage.fold(
            () {},
            (message) => context.showSnackbarMessage(message),
          );

          if (state.deletingAccountStatus.isSuccess()) {
            context.read<AuthCubit>().signOut();
            context.replaceRoute(const SignInRoute());
          }

          if (state.initialStatus.isFailure()) {
            context.pushRoute(
              FailureRoute(
                retryCallback: () =>
                    context.read<ProfileCubit>().getUserProfile(),
              ),
            );
          }
        },
        builder: (context, state) {
          switch (state.initialStatus) {
            case CubitStatus.initial:
              return Container();
            case CubitStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case CubitStatus.failure:
              return Container();
            case CubitStatus.success:
              return Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProfileUserPicture(
                        profilePictureUrl: state.user.profilePictureUrl,
                        username: state.user.username,
                      ),
                      const SizedBox(height: 30),
                      UsernameRow(username: state.user.username),
                      const SizedBox(height: 20),
                      AutoSizeText(
                        state.user.email,
                        style: context.titleMedium
                            .copyWith(color: context.secondaryColor),
                        maxLines: 1,
                      ),
                      const SizedBox(height: 40),
                      ProfileMenuDetailsRow(user: state.user),
                      const SizedBox(height: 30),
                      const ProfileMenuTiles(),
                    ],
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
