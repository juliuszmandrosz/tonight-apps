import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_photos/event_photos_bloc.dart';
import 'package:tonight/presentation/event_photos/widgets/event_photo_card.dart';
import 'package:tonight/presentation/event_photos/widgets/no_event_photos_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventPhotosPage extends StatelessWidget {
  const EventPhotosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventPhotosBloc, EventPhotosState>(
      listener: (context, state) {
        if (state.getPhotosStatus.isFailure()) {
          context.pushRoute(
            FailureRoute(retryCallback: () => _refreshPhotos(context)),
          );
        }
      },
      builder: (context, state) {
        switch (state.getPhotosStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return const SizedBox.shrink();
          case CubitStatus.success:
            return state.photos.isEmpty
                ? const NoEventPhotosInfo()
                : RefreshIndicator(
                    onRefresh: () async => _refreshPhotos(context),
                    child: InfiniteList(
                      itemCount: state.photos.length,
                      onFetchData: () => context
                          .read<EventPhotosBloc>()
                          .add(const EventPhotosEvent.nextPagePhotosFetched()),
                      hasReachedMax: state.hasReachedMax,
                      isLoading: state.nextPageStatus.isLoading(),
                      hasError: state.nextPageStatus.isFailure(),
                      itemBuilder: (_, i) =>
                          EventPhotoCard(photo: state.photos[i]),
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                    ),
                  );
        }
      },
    );
  }

  Future<void> _refreshPhotos(BuildContext context) async {
    context
        .read<EventPhotosBloc>()
        .add(const EventPhotosEvent.photosRefreshed());
  }
}
