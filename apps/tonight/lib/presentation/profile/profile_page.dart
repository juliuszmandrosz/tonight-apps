import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/presentation/profile/widgets/profile_user_picture_.dart';
import 'package:tonight/presentation/profile/widgets/profile_wall_photos.dart';
import 'package:tonight/presentation/profile/widgets/user_profile_stats_row.dart';
import 'package:tonight/presentation/profile/widgets/username_row.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) =>
          previous.initialStatus != current.initialStatus ||
          previous.snackbarMessage != current.snackbarMessage ||
          previous.refreshPhotosStatus != current.refreshPhotosStatus,
      listener: (context, state) {
        state.snackbarMessage.fold(
          () {},
          (message) => context.showSnackbarMessage(message),
        );

        if (state.initialStatus.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () => context
                  .read<ProfileBloc>()
                  .add(const ProfileEvent.profileLoaded()),
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
            final userProfile = state.userProfile.getOrCrash();
            return Padding(
              padding: const EdgeInsets.all(16),
              child: RefreshIndicator(
                onRefresh: () async => context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.photosRefreshed()),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      ProfileUserPicture(
                        profilePictureUrl: userProfile.profilePictureUrl,
                        username: userProfile.username,
                      ),
                      const SizedBox(height: 30),
                      UsernameRow(username: userProfile.username),
                      const SizedBox(height: 20),
                      AutoSizeText(
                        userProfile.email,
                        style: context.titleMedium.copyWith(
                          color: context.secondaryColor,
                        ),
                        maxLines: 1,
                      ),
                      const SizedBox(height: 40),
                      UserProfileStatsRow(userProfile: userProfile),
                      const SizedBox(height: 40),
                      ProfileWallPhotos(scrollController: scrollController),
                    ],
                  ),
                ),
              ),
            );
        }
      },
    );
  }
}
