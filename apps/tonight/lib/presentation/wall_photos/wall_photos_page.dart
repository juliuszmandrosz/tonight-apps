import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/presentation/wall_photos/widgets/refresh_wall_photos_button.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_card.dart';

class WallPhotosPage extends StatelessWidget {
  const WallPhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WallPhotosBloc, WallPhotosState>(
      builder: (ctx, state) {
        switch (state.getPhotosStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context
                  .read<WallPhotosBloc>()
                  .add(const WallPhotosEvent.wallPhotosRefreshed()),
              isSocketException: state.failure.fold(
                () => false,
                (f) => f.maybeMap(
                  noConnection: (_) => true,
                  orElse: () => false,
                ),
              ),
            );
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.success:
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: state.photos.isEmpty
                  ? const RefreshWallPhotosButton()
                  : RefreshIndicator(
                      onRefresh: () async => context
                          .read<WallPhotosBloc>()
                          .add(const WallPhotosEvent.wallPhotosRefreshed()),
                      child: InfiniteList(
                        itemCount: state.photos.length,
                        hasReachedMax: state.hasReachedMax,
                        isLoading: state.getPhotosStatus.isLoading(),
                        hasError: state.getPhotosStatus.isFailure(),
                        onFetchData: () => context
                            .read<WallPhotosBloc>()
                            .add(const WallPhotosEvent.nextPagePhotosFetched()),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 20),
                        itemBuilder: (_, i) => WallPhotoCard(
                          wallPhoto: state.photos[i],
                        ),
                      ),
                    ),
            );
        }
      },
    );
  }
}
