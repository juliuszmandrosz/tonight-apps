import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_shimmer.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_tile.dart';
import 'package:translations/raver_translations.dart';

class ClubEvents extends StatelessWidget {
  final String clubId;

  const ClubEvents({Key? key, required this.clubId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<EventsBloc, EventsState>(
            builder: (context, state) {
              switch (state.getEventsStatus) {
                case CubitStatus.initial:
                  return Container();

                case CubitStatus.loading:
                  return ListView.separated(
                    itemCount: 4,
                    separatorBuilder: (_, __) => const SizedBox(height: 20),
                    itemBuilder: (context, index) => const EventShimmer(),
                  );

                case CubitStatus.failure:
                  return FailureInfo(
                    retryCallback: () => _refreshEvents(context),
                    isSocketException: state.failure.fold(
                      () => false,
                      (f) => f.maybeMap(
                        noConnection: (_) => true,
                        orElse: () => false,
                      ),
                    ),
                  );

                case CubitStatus.success:
                  if (state.events.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S().noEventsInClub,
                            style: context.titleMedium,
                          ),
                          const SizedBox(height: 20),
                          OutlinedButton(
                            onPressed: () => _refreshEvents(context),
                            child: Text(S().refresh),
                          )
                        ],
                      ),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async => _refreshEvents(context),
                    child: InfiniteList(
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (ctx, i) => Center(
                        child: EventTile(
                          event: state.events[i],
                        ),
                      ),
                      itemCount: state.events.length,
                      hasReachedMax: state.hasReachedMax,
                      isLoading: state.nextPageStatus.isLoading(),
                      hasError: state.nextPageStatus.isFailure(),
                      onFetchData: () => context
                          .read<EventsBloc>()
                          .add(const EventsEvent.nextPageEventsFetched()),
                    ),
                  );
              }
            },
          ),
        )
      ],
    );
  }

  _refreshEvents(BuildContext context) {
    context.read<EventsBloc>().add(const EventsEvent.eventsRefreshed());
  }
}
