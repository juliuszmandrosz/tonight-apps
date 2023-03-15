import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_shimmer.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/events/event_tile.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ClubEvents extends StatelessWidget {
  final String clubId;

  const ClubEvents({Key? key, required this.clubId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocConsumer<EventOverviewBloc, EventOverviewState>(
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) {
              if (state.status.isFailure()) {
                context.pushRoute(
                  FailureRoute(
                    retryCallback: () => _refreshEvents(context, state),
                  ),
                );
              }
            },
            builder: (context, state) {
              switch (state.status) {
                case CubitStatus.initial:
                  return Container();

                case CubitStatus.loading:
                  return ListView.separated(
                    itemCount: 4,
                    separatorBuilder: (_, __) => const SizedBox(height: 20),
                    itemBuilder: (context, index) => const EventShimmer(),
                  );

                case CubitStatus.failure:
                  return Container();

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
                            onPressed: () => _refreshEvents(context, state),
                            child: Text(S().refresh),
                          )
                        ],
                      ),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async => _refreshEvents(context, state),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.events.length + 1,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (ctx, i) => i >= state.events.length
                          ? state.hasReachedMax
                              ? const SizedBox()
                              : const BottomLoader()
                          : Center(
                              child: EventTile(
                                event: state.events[i],
                              ),
                            ),
                    ),
                  );
              }
            },
          ),
        )
      ],
    );
  }

  _refreshEvents(BuildContext context, EventOverviewState state) {
    context.read<EventOverviewBloc>().add(
          EventOverviewEvent.eventsFetched(
            state.eventFilters,
            state.sortModel,
          ),
        );
  }
}
