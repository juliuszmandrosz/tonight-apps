import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_photos/event_photos_bloc.dart';
import 'package:tonight/presentation/event_photos/widgets/event_photo_card.dart';
import 'package:tonight/presentation/event_photos/widgets/no_event_photos_info.dart';

class EventPhotosPage extends StatelessWidget {
  const EventPhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventPhotosBloc, EventPhotosState>(
      listenWhen: (p, c) => p.snackbarMessage != c.snackbarMessage,
      listener: (context, state) {
        state.snackbarMessage.fold(
          () {},
          (message) => context.showSnackbarMessage(message),
        );
      },
      builder: (context, state) {
        switch (state.getPhotosStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(retryCallback: () => _refreshPhotos(context));
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
                      itemBuilder: (_, i) => EventPhotoCard(
                        photo: state.photos[i],
                      ),
                      separatorBuilder: (_, i) => const SizedBox(height: 12),
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
