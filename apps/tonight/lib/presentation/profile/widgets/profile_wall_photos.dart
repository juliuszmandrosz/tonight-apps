import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/presentation/profile/widgets/profile_no_photos_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ProfileWallPhotos extends StatelessWidget {
  final ScrollController scrollController;

  const ProfileWallPhotos({required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final photos = state.userProfile.getOrCrash().userPhotos;
        return photos.isEmpty
            ? const ProfileNoPhotosInfo()
            : InfiniteGrid(
                shrinkWrap: true,
                itemCount: photos.length,
                isLoading: state.nextPagePhotosStatus.isLoading(),
                hasError: state.nextPagePhotosStatus.isFailure(),
                hasReachedMax: state.hasPhotosReachedMax,
                onFetchData: () => context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.nextPhotosPageFetched()),
                itemBuilder: (_, i) => InkWell(
                  onTap: () => context.pushRoute(
                    ReviewRoute(eventId: photos[i].eventId),
                  ),
                  child: NetworkPhoto(photoUrl: photos[i].photoUrl),
                ),
                scrollController: scrollController,
              );
      },
    );
  }
}
