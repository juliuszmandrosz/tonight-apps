import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/presentation/profile/widgets/profile_user_picture_.dart';
import 'package:tonight/presentation/profile/widgets/profile_wall_photos.dart';
import 'package:tonight/presentation/profile/widgets/user_profile_stats_row.dart';
import 'package:tonight/presentation/profile/widgets/username_row.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useEffect(
      () {
        context.read<ProfileBloc>().add(const ProfileEvent.profileLoaded());
        unawaited(context.read<EventFavoriteCubit>().getFavoriteEvents());
        unawaited(context.read<ClubFavoriteCubit>().getFavoriteClubs());
        return null;
      },
      const [],
    );

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
      },
      builder: (context, state) {
        switch (state.initialStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context
                  .read<ProfileBloc>()
                  .add(const ProfileEvent.profileLoaded()),
            );
          case CubitStatus.success:
            final userProfile = state.userProfile.getOrCrash();
            return RefreshIndicator(
              onRefresh: () async => context
                  .read<ProfileBloc>()
                  .add(const ProfileEvent.photosRefreshed()),
              child: SingleChildScrollView(
                controller: scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    ProfileUserPicture(
                      profilePictureUrl: userProfile.profilePictureUrl,
                      username: userProfile.username,
                    ),
                    const SizedBox(height: 24),
                    UsernameRow(username: userProfile.username),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: UserProfileStatsRow(userProfile: userProfile),
                    ),
                    const SizedBox(height: 32),
                    ProfileWallPhotos(scrollController: scrollController),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
        }
      },
    );
  }
}
