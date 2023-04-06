import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_cubit.dart';
import 'package:tonight/presentation/core/ticket_logo_animation.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/wall_photos/widgets/refresh_wall_photos_button.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_card.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class WallPhotosPage extends StatelessWidget {
  const WallPhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wallPhotosCubit = context.read<WallPhotosCubit>();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocConsumer<WallPhotosCubit, WallPhotosState>(
        listenWhen: (previous, current) =>
            previous.getPhotosStatus != current.getPhotosStatus,
        listener: (ctx, state) {
          if (state.getPhotosStatus.isFailure()) {
            context.pushRoute(
              FailureRoute(
                retryCallback: () => wallPhotosCubit.getPhotos(),
              ),
            );
          }
        },
        builder: (ctx, state) => state.getPhotosStatus.isLoading()
            ? const TicketLogoAnimation()
            : RefreshIndicator(
                onRefresh: () async => wallPhotosCubit.getPhotos(),
                child: state.photos.isEmpty
                    ? const RefreshWallPhotosButton()
                    : InfiniteList(
                        itemCount: state.photos.length,
                        isLoading: state.nextPageStatus.isLoading(),
                        hasError: state.nextPageStatus.isFailure(),
                        hasReachedMax: state.hasReachedMax,
                        onFetchData: () =>
                            wallPhotosCubit.fetchNextPhotosPage(),
                        separatorBuilder: (_, __) => const SizedBox(height: 12),
                        itemBuilder: (_, i) => WallPhotoCard(
                          wallPhoto: state.photos[i],
                        ),
                        loadingBuilder: (_) => const BottomLoader(),
                        errorBuilder: (_) => NextPageError(
                          retryCallback: () =>
                              wallPhotosCubit.fetchNextPhotosPage(),
                        ),
                      ),
              ),
      ),
    );
  }
}
