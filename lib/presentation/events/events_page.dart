import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/presentation/events/widgets/event_card.dart';
import 'package:raver/presentation/events/widgets/event_filters_row.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 0.95;
  late final EventOverviewBloc _eventOverviewBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _eventOverviewBloc = BlocProvider.of<EventOverviewBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const EventFiltersRow(),
          const SizedBox(height: 20),
          BlocBuilder<EventOverviewBloc, EventOverviewState>(
              builder: (context, state) {
            switch (state.status) {
              case CubitStatus.initial:
                return Container();

              case CubitStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );

              case CubitStatus.failure:
                return Center(child: Text(S().errorLoadingEvents));

              case CubitStatus.success:
                if (state.events.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TODO - change this
                      const SizedBox(height: 200),
                      Text(
                        state.eventFilters.maxDistanceFilter.userLocation
                                    .isNotEmpty &&
                                state.eventFilters.maxDistanceFilter.enabled
                            ? S().noEventsNearYou
                            : S().events(0),
                        style: context.subtitle1,
                      ),
                      const SizedBox(height: 20),
                      OutlinedButton(
                          onPressed: () =>
                              context.read<EventOverviewBloc>().add(
                                    EventOverviewEvent.eventsFetched(
                                        state.eventFilters, state.sortModel),
                                  ),
                          child: Text(S().refresh)),
                    ],
                  );
                }

                return Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async =>
                        context.read<EventOverviewBloc>().add(
                              EventOverviewEvent.eventsFetched(
                                  state.eventFilters, state.sortModel),
                            ),
                    child: ListView.separated(
                      separatorBuilder: (_, __) => const SizedBox(
                        height: 10,
                      ),
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: state.hasReachedMax
                          ? state.events.length
                          : state.events.length + 1,
                      itemBuilder: (ctx, i) => i >= state.events.length
                          ? const BottomLoader()
                          : Center(
                              child: EventCard(event: state.events[i]),
                            ),
                      controller: _scrollController,
                    ),
                  ),
                );
            }
          }),
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
    return currentScroll >= (maxScroll * _scrollThreshold);
  }
}
