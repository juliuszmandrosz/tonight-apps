import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/tonight_events/tonight_events_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_card.dart';
import 'package:tonight/presentation/wall_photos/widgets/refresh_wall_photos_button.dart';

class TonightEventsPage extends StatelessWidget {
  const TonightEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TonightEventsBloc, TonightEventsState>(
      listenWhen: (previous, current) =>
          previous.getEventsStatus != current.getEventsStatus,
      listener: (ctx, state) {
        if (state.getEventsStatus.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () => context.read<TonightEventsBloc>().add(
                    const TonightEventsEvent.eventsFetched(),
                  ),
            ),
          );
        }
      },
      builder: (ctx, state) {
        switch (state.getEventsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.failure:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.success:
            return state.events.isEmpty
                ? const RefreshWallPhotosButton()
                : RefreshIndicator(
                    onRefresh: () async => context
                        .read<TonightEventsBloc>()
                        .add(const TonightEventsEvent.eventsFetched()),
                    child: InfiniteList(
                      itemCount: state.events.length,
                      hasReachedMax: state.hasReachedMax,
                      isLoading: state.getEventsStatus.isLoading(),
                      hasError: state.getEventsStatus.isFailure(),
                      onFetchData: () => context.read<TonightEventsBloc>().add(
                            const TonightEventsEvent.nextPageEventsFetched(),
                          ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (_, i) => TonightEventCard(
                        event: state.events[i],
                      ),
                    ),
                  );
        }
      },
    );
  }
}
