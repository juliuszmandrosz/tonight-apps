import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/discover/discover_cubit.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/presentation/events/widgets/event_card.dart';
import 'package:tonight/presentation/events/widgets/event_filters_chips.dart';
import 'package:tonight/presentation/events/widgets/no_events_info.dart';

class EventsPage extends HookWidget {
  const EventsPage({super.key});

  static const heroPhrase = 'eventsPageHero';

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final location = context.read<UserLocationCubit>().state.userLocation;
      final phraseFilter = context.read<DiscoverCubit>().state.phraseFilter;
      context.read<EventsBloc>().add(
            EventsEvent.eventsFetched(
              phraseFilter: phraseFilter,
              userLocation: location,
            ),
          );
      return null;
    }, const []);

    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: EventFiltersChips(),
        ),
        const SizedBox(height: 8),
        BlocBuilder<EventsBloc, EventsState>(
          builder: (context, state) {
            switch (state.getEventsStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();

              case CubitStatus.loading:
                return const Expanded(child: WaveLoadingIndicator());

              case CubitStatus.failure:
                return Expanded(
                  child: FailureInfo(
                    retryCallback: () => _refreshEvents(context),
                    isSocketException: state.failure.fold(
                      () => false,
                      (f) => f.maybeMap(
                        noConnection: (_) => true,
                        orElse: () => false,
                      ),
                    ),
                  ),
                );

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
