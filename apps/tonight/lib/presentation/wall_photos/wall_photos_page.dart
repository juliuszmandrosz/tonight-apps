import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/presentation/wall_photos/widgets/no_wall_photos_info.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_card.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photos_filter_chips.dart';

class WallPhotosPage extends StatelessWidget {
  const WallPhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            bottom: 8,
          ),
          alignment: Alignment.centerLeft,
          child: const WallPhotosFilterChips(),
        ),
        BlocConsumer<WallPhotosBloc, WallPhotosState>(
          listenWhen: (p, c) => p.snackbarMessage != c.snackbarMessage,
          listener: (context, state) {
            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );
          },
          builder: (ctx, state) {
            switch (state.getPhotosStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();
              case CubitStatus.failure:
                return Expanded(
                  child: FailureInfo(
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
                  ),
                );
              case CubitStatus.loading:
                return const Expanded(child: WaveLoadingIndicator());
              case CubitStatus.success:
                return state.photos.isEmpty
                    ? const Expanded(child: NoWallPhotosInfo())
                    : Expanded(
                        child: RefreshIndicator(
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
                                .add(const WallPhotosEvent
                                    .nextPagePhotosFetched()),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 16),
                            itemBuilder: (_, i) => WallPhotoCard(
                              wallPhoto: state.photos[i],
                            ),
                          ),
                        ),
                      );
            }
          },
        ),
      ],
    );
  }
}
