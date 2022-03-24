import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/events/widgets/live_events_tab.dart';
import 'package:raver_partners/presentation/events/widgets/past_events_tab.dart';
import 'package:raver_partners/presentation/events/widgets/upcoming_events_tab.dart';
import 'package:raver_translations/raver_translations.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentClub = context.read<ClubInfoCubit>().state.club.getOrCrash();

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        children: [
          const SizedBox(height: 5),
          TabBar(
            isScrollable: false,
            tabs: [
              Tab(
                icon: const Icon(FontAwesomeIcons.fire),
                text: S().live,
              ),
              Tab(
                icon: const Icon(FontAwesomeIcons.calendarPlus),
                text: S().upcoming,
              ),
              Tab(
                  icon: const Icon(FontAwesomeIcons.calendarMinus),
                  text: S().past),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_liveEventsFetched(currentClub.id)),
                    child: BlocBuilder<EventNotifierCubit, EventNotifierState>(
                      builder: (context, state) {
                        //TODO: This could be handled with BlocConsumer, + use listenWhen to filter if event should be added to this tab
                        state.lastAddedEvent.fold(
                          () {},
                          (event) {
                            final now = DateTime.now();
                            if (event.eventStartDateTime.isBefore(now) &&
                                event.eventEndDateTime.isAfter(now)) {
                              _emitNewEventAdded(context, event);
                            }
                          },
                        );

                        state.lastEditedEvent.fold(
                          () {},
                          (event) {
                            _emitEventInStateEdited(
                                context, event.value1, event.value2);
                          },
                        );

                        return const LiveEventsTab();
                      },
                    ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_upcomingEventsFetched(currentClub.id)),
                    child: BlocBuilder<EventNotifierCubit, EventNotifierState>(
                      builder: (context, state) {
                        state.lastAddedEvent.fold(
                          () {},
                          (event) {
                            final now = DateTime.now();
                            if (event.eventStartDateTime.isAfter(now)) {
                              _emitNewEventAdded(context, event);
                            }
                          },
                        );

                        state.lastEditedEvent.fold(
                          () {},
                          (event) {
                            _emitEventInStateEdited(
                                context, event.value1, event.value2);
                          },
                        );

                        return const UpcomingEventsTab();
                      },
                    ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_pastEventsFetched(currentClub.id)),
                    child: BlocBuilder<EventNotifierCubit, EventNotifierState>(
                      builder: (context, state) {
                        state.lastAddedEvent.fold(
                          () {},
                          (event) {
                            final now = DateTime.now();
                            if (event.eventEndDateTime.isBefore(now)) {
                              _emitNewEventAdded(context, event);
                            }
                          },
                        );

                        return const PastEventsTab();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  EventOverviewEvent _eventsFetched(EventFilters filters, SortModel sortModel) {
    return EventOverviewEvent.eventsFetched(filters, sortModel);
  }

  EventOverviewEvent _upcomingEventsFetched(String clubId) {
    return _eventsFetched(
      EventFilters.empty().copyWith(
        showOnlyFilter: ShowOnlyFilter(showOnlyUpcoming: true),
        clubFilter: ClubFilter(clubId: clubId),
      ),
      SortModel.empty(),
    );
  }

  EventOverviewEvent _pastEventsFetched(String clubId) {
    return _eventsFetched(
      EventFilters.empty().copyWith(
        showOnlyFilter: ShowOnlyFilter(showOnlyPast: true),
        clubFilter: ClubFilter(clubId: clubId),
        dateRangeFilter: DateRangeFilter(
          fromDate: null,
          toDate: DateTime.now(),
        ),
      ),
      SortModel(
        fieldName: eventStartDateTime,
        direction: SortDirection.desc,
      ),
    );
  }

  EventOverviewEvent _liveEventsFetched(String clubId) {
    return _eventsFetched(
      EventFilters.empty().copyWith(
        showOnlyFilter: ShowOnlyFilter(showOnlyLive: true),
        clubFilter: ClubFilter(clubId: clubId),
      ),
      SortModel.empty(),
    );
  }

  _emitNewEventAdded(BuildContext context, Event event) {
    context.read<EventOverviewBloc>().add(
          EventOverviewEvent.eventToStateAdded(event),
        );
  }

  _emitEventInStateEdited(
    BuildContext context,
    Event oldEvent,
    Event editedEvent,
  ) {
    final eventOverviewBloc = context.read<EventOverviewBloc>();
    final events = eventOverviewBloc.state.events;
    if (events.contains(oldEvent)) {
      eventOverviewBloc.add(
        EventOverviewEvent.eventInStateUpdated(
          oldEvent,
          editedEvent,
        ),
      );
    }
  }
}
