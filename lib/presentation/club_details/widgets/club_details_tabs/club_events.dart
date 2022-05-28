import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/events/event_shimmer.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/events/event_tile.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubEvents extends StatefulWidget {
  final String clubId;

  const ClubEvents({Key? key, required this.clubId}) : super(key: key);

  @override
  State<ClubEvents> createState() => _ClubEventsState();
}

class _ClubEventsState extends State<ClubEvents> {
  final _scrollController = ScrollController();
  late final EventOverviewBloc _eventOverviewBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _eventOverviewBloc = getIt<EventOverviewBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RaverHeadline(text: S().upcomingEvents),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: BlocBuilder<EventOverviewBloc, EventOverviewState>(
              bloc: _eventOverviewBloc
                ..add(EventOverviewEvent.eventsFetched(
                    EventFilters.empty().copyWith(
                        clubFilter: ClubFilter(clubId: widget.clubId),
                        dateRangeFilter: DateRangeFilter(
                          fromDate: DateTime.now(),
                          toDate: null,
                        )),
                    SortModel.empty())),
              builder: (context, state) {
                switch (state.status) {
                  case CubitStatus.initial:
                    return Container();
                  case CubitStatus.loading:
                    return ListView.separated(
                      itemCount: 3,
                      separatorBuilder: (_, __) => const SizedBox(
                        height: 10,
                      ),
                      itemBuilder: (context, index) {
                        return const EventShimmer();
                      },
                    );

                  case CubitStatus.failure:
                    return RefreshIndicator(
                      onRefresh: () async =>
                          context.read<EventOverviewBloc>().add(
                                EventOverviewEvent.eventsFetched(
                                    state.eventFilters, state.sortModel),
                              ),
                      child: Center(
                        child: Text(S().errorLoadingEvents),
                      ),
                    );
                  case CubitStatus.success:
                    if (state.events.isEmpty) {
                      return RefreshIndicator(
                        onRefresh: () async =>
                            context.read<EventOverviewBloc>().add(
                                  EventOverviewEvent.eventsFetched(
                                      state.eventFilters, state.sortModel),
                                ),
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Center(
                              child: Text(
                                S().noEventsInClub,
                                style: context.subtitle1,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    return RefreshIndicator(
                      onRefresh: () async =>
                          context.read<EventOverviewBloc>().add(
                                EventOverviewEvent.eventsFetched(
                                    state.eventFilters, state.sortModel),
                              ),
                      child: ListView.separated(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: state.hasReachedMax
                            ? state.events.length
                            : state.events.length + 1,
                        separatorBuilder: (_, __) => const SizedBox(
                          height: 10,
                        ),
                        itemBuilder: (ctx, i) => i >= state.events.length
                            ? const BottomLoader()
                            : EventTile(event: state.events[i]),
                        controller: _scrollController,
                      ),
                    );
                }
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      _eventOverviewBloc.add(
        const EventOverviewEvent.nextEventsPageFetched(),
      );
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.95);
  }
}
