import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/events/event_shimmer.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/events/event_tile.dart';
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
    return Column(
      children: [
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
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S().noEventsInClub,
                            style: context.subtitle1,
                          ),
                          const SizedBox(height: 20),
                          OutlinedButton(
                            onPressed: () {
                              context.read<EventOverviewBloc>().add(
                                    EventOverviewEvent.eventsFetched(
                                      state.eventFilters,
                                      state.sortModel,
                                    ),
                                  );
                            },
                            child: Text(S().refresh),
                          )
                        ],
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
                      controller: _scrollController,
                    ),
                  );
              }
            },
          ),
        )
      ],
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
