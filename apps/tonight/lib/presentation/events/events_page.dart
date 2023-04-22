import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/presentation/events/widgets/event_card.dart';
import 'package:tonight/presentation/events/widgets/event_filters_chips.dart';
import 'package:tonight/presentation/events/widgets/no_events_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  static const heroPhrase = 'eventsPageHero';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        const Align(
          alignment: Alignment.centerLeft,
          child: EventFiltersChips(),
        ),
        BlocConsumer<EventsBloc, EventsState>(
          listenWhen: (previous, current) =>
              previous.getEventsStatus != current.getEventsStatus,
          listener: (context, state) {
            if (state.getEventsStatus.isFailure()) {
              context.pushRoute(
                FailureRoute(
                  retryCallback: () => _refreshEvents(context),
                ),
              );
            }
          },
          builder: (context, state) {
            switch (state.getEventsStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();

              case CubitStatus.loading:
                return const Expanded(child: WaveLoadingIndicator());

              case CubitStatus.failure:
                return const SizedBox.shrink();

              case CubitStatus.success:
                return state.events.isEmpty
                    ? Expanded(
                        child: NoEventsInfo(onEventsRefreshed: _refreshEvents),
                      )
                    : Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async => _refreshEvents(context),
                          child: InfiniteList(
                            itemCount: state.events.length,
                            hasError: state.nextPageStatus.isFailure(),
                            isLoading: state.nextPageStatus.isLoading(),
                            hasReachedMax: state.hasReachedMax,
                            onFetchData: () => context
                                .read<EventsBloc>()
                                .add(const EventsEvent.nextPageEventsFetched()),
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 12),
                            itemBuilder: (_, i) => EventCard(
                              event: state.events[i],
                              heroPhrase: heroPhrase,
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

  Future<void> _refreshEvents(BuildContext context) async {
    context.read<EventsBloc>().add(const EventsEvent.eventsRefreshed());
  }
}
