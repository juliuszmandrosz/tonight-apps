import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/events/widgets/event_card.dart';
import 'package:raver/presentation/events/widgets/event_filters_row.dart';
import 'package:raver/presentation/events/widgets/event_search_field.dart';
import 'package:raver/presentation/events/widgets/search_events_info.dart';
import 'package:raver/presentation/routes/app_router.dart';
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
  static const heroPhrase = 'eventsPageHero';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _eventOverviewBloc = context.read<EventOverviewBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventFiltersCubit>(param1: _eventOverviewBloc),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const EventSearchField(),
            const SizedBox(height: 15),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async => _refreshEvents(),
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _scrollController,
                  children: [
                    const SearchEventsInfo(),
                    const SizedBox(height: 15),
                    const EventFiltersRow(),
                    const SizedBox(height: 15),
                    BlocConsumer<EventOverviewBloc, EventOverviewState>(
                      listenWhen: (previous, current) =>
                          previous.status != current.status,
                      listener: (context, state) {
                        if (state.status.isFailure()) {
                          context.pushRoute(
                            FailureRoute(
                              retryCallback: () => _refreshEvents(),
                            ),
                          );
                        }
                      },
                      builder: (context, state) {
                        switch (state.status) {
                          case CubitStatus.initial:
                            return Container();

                          case CubitStatus.loading:
                            return Center(
                              child: SpinKitThreeBounce(
                                color: context.onSurfaceColor,
                                size: 30,
                              ),
                            );

                          case CubitStatus.failure:
                            return Container();

                          case CubitStatus.success:
                            if (state.events.isEmpty) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                  Text(
                                    state.eventFilters.maxDistanceFilter
                                                .userLocation.isNotEmpty &&
                                            state.eventFilters.maxDistanceFilter
                                                .enabled
                                        ? S().noEventsNearYou
                                        : S().events(0),
                                    style: context.subtitle1,
                                  ),
                                  const SizedBox(height: 20),
                                  OutlinedButton(
                                      onPressed: () => _refreshEvents(),
                                      child: Text(S().refresh)),
                                ],
                              );
                            }

                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 10),
                              itemCount: state.hasReachedMax
                                  ? state.events.length
                                  : state.events.length + 1,
                              itemBuilder: (ctx, i) => i >= state.events.length
                                  ? const BottomLoader()
                                  : Center(
                                      child: EventCard(
                                        event: state.events[i],
                                        heroPhrase: heroPhrase,
                                      ),
                                    ),
                            );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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

  _refreshEvents() {
    var filters = _eventOverviewBloc.state.eventFilters;

    if (filters.dateRangeFilter.toDate == null) {
      final dateRangeFilter = DateRangeFilter(
        fromDate: DateTime.now(),
        toDate: null,
      );
      filters = filters.copyWith(dateRangeFilter: dateRangeFilter);
    }

    _eventOverviewBloc.add(
      EventOverviewEvent.eventsFetched(
        filters,
        _eventOverviewBloc.state.sortModel,
      ),
    );
  }
}
