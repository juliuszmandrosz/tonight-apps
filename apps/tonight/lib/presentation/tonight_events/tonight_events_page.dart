import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/tonight_events/widgets/no_tonight_events_info.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_card.dart';
import 'package:tonight/presentation/tonight_events/widgets/tonight_event_filter_chips.dart';

class TonightEventsPage extends StatelessWidget {
  const TonightEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          alignment: Alignment.centerLeft,
          child: const TonightEventFilterChips(),
        ),
        const SizedBox(height: 8),
        BlocConsumer<TonightEventsBloc, TonightEventsState>(
          listenWhen: (previous, current) =>
              previous.getEventsStatus != current.getEventsStatus,
          listener: (ctx, state) {
            if (state.getEventsStatus.isFailure()) {
              context.pushRoute(
                FailureRoute(
                  retryCallback: () => context
                      .read<TonightEventsBloc>()
                      .add(const TonightEventsEvent.eventsRefreshed()),
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
                return const Expanded(child: WaveLoadingIndicator());
              case CubitStatus.success:
                return state.events.isEmpty
                    ? const Expanded(child: NoTonightEventsInfo())
                    : Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async => context
                              .read<TonightEventsBloc>()
                              .add(const TonightEventsEvent.eventsRefreshed()),
                          child: InfiniteList(
                            itemCount: state.events.length,
                            hasReachedMax: state.hasReachedMax,
                            isLoading: state.getEventsStatus.isLoading(),
                            hasError: state.getEventsStatus.isFailure(),
                            onFetchData: () =>
                                context.read<TonightEventsBloc>().add(
                                      const TonightEventsEvent
                                          .nextPageEventsFetched(),
                                    ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 20),
                            itemBuilder: (_, i) => TonightEventCard(
                              event: state.events[i],
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
