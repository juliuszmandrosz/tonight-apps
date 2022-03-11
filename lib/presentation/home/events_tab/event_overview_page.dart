import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/core/cubit_status.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_overview/event_overview_bloc.dart';
import 'package:raver/domain/events/filters/event_filters_entity.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/core/bottom_loader.dart';
import 'package:raver/presentation/home/events_tab/widgets/event_card.dart';
import 'package:raver/presentation/home/events_tab/widgets/event_filters_section.dart';

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

  _fetchEvents(BuildContext context) {
    final eventsBloc = BlocProvider.of<EventOverviewBloc>(context);

    if (eventsBloc.state.status != CubitStatus.initial) return;

    final locationState = BlocProvider.of<UserLocationCubit>(context).state;
    var eventFilters = EventFilters.empty();
    locationState.userLocation.fold(
      () => {},
      (location) => {
        eventFilters = eventFilters.copyWith(userLocation: location),
      },
    );

    eventsBloc.add(
      EventOverviewEvent.eventsFetched(eventFilters),
    );
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
          _fetchEvents(context);
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
                      EventOverviewEvent.eventsFetched(state.eventFilters),
                    ),
                child: Center(
                  child: Text(S().errorLoadingEvents),
                ),
              );

            case CubitStatus.success:
              if (state.events.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async => context.read<EventOverviewBloc>().add(
                        EventOverviewEvent.eventsFetched(state.eventFilters),
                      ),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Center(
                        child: Text(
                          state.eventFilters.userLocation.isNotEmpty &&
                                  state.eventFilters.isMaxDistanceOption
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
                        EventOverviewEvent.eventsFetched(state.eventFilters),
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
