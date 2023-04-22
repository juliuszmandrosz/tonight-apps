import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/wall_photos/widgets/refresh_wall_photos_button.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_card.dart';

class WallPhotosPage extends StatelessWidget {
  const WallPhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocProvider(
        create: (context) => getIt<WallPhotosBloc>()
          ..add(const WallPhotosEvent.wallPhotosFetched()),
        child: Builder(
          builder: (context) {
            return BlocConsumer<WallPhotosBloc, WallPhotosState>(
              listenWhen: (previous, current) =>
                  previous.getPhotosStatus != current.getPhotosStatus,
              listener: (ctx, state) {
                if (state.getPhotosStatus.isFailure()) {
                  context.pushRoute(
                    FailureRoute(
                      retryCallback: () => context.read<WallPhotosBloc>().add(
                            const WallPhotosEvent.wallPhotosFetched(),
                          ),
                    ),
                  );
                }
              },
              builder: (ctx, state) {
                switch (state.getPhotosStatus) {
                  case CubitStatus.initial:
                    return const SizedBox.shrink();
                  case CubitStatus.failure:
                    return const SizedBox.shrink();
                  case CubitStatus.loading:
                    return const WaveLoadingIndicator();
                  case CubitStatus.success:
                    return state.photos.isEmpty
                        ? const RefreshWallPhotosButton()
                        : RefreshIndicator(
                            onRefresh: () async => context
                                .read<WallPhotosBloc>()
                                .add(const WallPhotosEvent.wallPhotosFetched()),
                            child: InfiniteList(
                              itemCount: state.photos.length,
                              hasReachedMax: state.hasReachedMax,
                              isLoading: state.getPhotosStatus.isLoading(),
                              hasError: state.getPhotosStatus.isFailure(),
                              onFetchData: () =>
                                  context.read<WallPhotosBloc>().add(
                                        const WallPhotosEvent
                                            .nextPagePhotosFetched(),
                                      ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 16),
                              itemBuilder: (_, i) => WallPhotoCard(
                                wallPhoto: state.photos[i],
                              ),
                            ),
                          );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
