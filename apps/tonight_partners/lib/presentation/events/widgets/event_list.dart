import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/presentation/events/widgets/event_list_tile.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:translations/raver_translations.dart';

class EventList extends StatefulWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
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
    return BlocConsumer<EventOverviewBloc, EventOverviewState>(
        listenWhen: (previous, current) => previous.status != current.status,
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
              return const DotsLoadingIndicator();

            case CubitStatus.failure:
              return Container();

            case CubitStatus.success:
              if (state.events.isEmpty) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TODO - change this
                    const SizedBox(height: 100),
                    Text(
                      S().events(0),
                      style: context.titleMedium,
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () => _refreshEvents(),
                      child: Text(S().refresh),
                    ),
                  ],
                );
              }

              return Expanded(
                child: RefreshIndicator(
                  onRefresh: () async => _refreshEvents(),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: state.events.length + 1,
                          itemBuilder: (ctx, i) => i >= state.events.length
                              ? state.hasReachedMax
                                  ? const SizedBox(height: 60)
                                  : const BottomLoader()
                              : Center(
                                  child: EventListTile(
                                    event: state.events[i],
                                  ),
                                ),
                          controller: _scrollController,
                          separatorBuilder: (context, i) => const Divider(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
          }
        });
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
    context.read<EventOverviewBloc>().add(
          EventOverviewEvent.eventsFetched(
            _eventOverviewBloc.state.eventFilters,
            _eventOverviewBloc.state.sortModel,
          ),
        );
  }
}
