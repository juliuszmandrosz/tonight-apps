import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/presentation/profile/widgets/profile_no_photos_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ProfileWallPhotos extends StatelessWidget {
  final ScrollController scrollController;

  const ProfileWallPhotos({
    required this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final photos = state.userProfile.getOrCrash().userPhotos;
        return photos.isEmpty
            ? const ProfileNoPhotosInfo()
            : InfiniteGrid(
                shrinkWrap: true,
                scrollController: scrollController,
                itemCount: photos.length,
                hasReachedMax: state.hasPhotosReachedMax,
                isLoading: state.nextPagePhotosStatus.isLoading(),
                hasError: state.nextPagePhotosStatus.isFailure(),
                onFetchData: () => context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.nextPhotosPageFetched()),
                itemBuilder: (_, i) {
                  final heroTag = 'profile_wall_photo_$i';
                  return InkWell(
                    onTap: () => context.pushRoute(
                      UserWallPhotoPreviewRoute(
                        photo: photos[i],
                        heroTag: heroTag,
                      ),
                    ),
                    child: Hero(
                      tag: heroTag,
                      child: NetworkPhoto(photoUrl: photos[i].photoUrl),
                    ),
                  );
                },
              );
      },
    );
  }
}
