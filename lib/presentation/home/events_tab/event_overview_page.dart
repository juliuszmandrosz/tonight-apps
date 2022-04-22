import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/presentation/home/events_tab/widgets/event_card.dart';
import 'package:raver/presentation/home/events_tab/widgets/event_filters_section.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class EventOverviewPage extends StatefulWidget {
  const EventOverviewPage({Key? key}) : super(key: key);

  @override
  State<EventOverviewPage> createState() => _EventOverviewPageState();
}

class _EventOverviewPageState extends State<EventOverviewPage> {
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
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const EventFiltersSection(),
        const SizedBox(height: 10),
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
              return RefreshIndicator(
                onRefresh: () async => context.read<EventOverviewBloc>().add(
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
                  onRefresh: () async => context.read<EventOverviewBloc>().add(
                        EventOverviewEvent.eventsFetched(
                            state.eventFilters, state.sortModel),
                      ),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Center(
                        child: Text(
                          state.eventFilters.maxDistanceFilter.userLocation
                                      .isNotEmpty &&
                                  state.eventFilters.maxDistanceFilter.enabled
                              ? S().noEventsNearYou
                              : S().events(0),
                          style: textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ),
                );
              }

              return Expanded(
                child: RefreshIndicator(
                  onRefresh: () async => context.read<EventOverviewBloc>().add(
                        EventOverviewEvent.eventsFetched(
                            state.eventFilters, state.sortModel),
                      ),
                  child: ListView.builder(
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
