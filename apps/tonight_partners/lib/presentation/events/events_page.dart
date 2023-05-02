import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/club_info/club_info_cubit.dart';
import 'package:tonight_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/events/widgets/live_events_tab.dart';
import 'package:tonight_partners/presentation/events/widgets/past_events_tab.dart';
import 'package:tonight_partners/presentation/events/widgets/upcoming_events_tab.dart';
import 'package:translations/raver_translations.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentClub = context.read<ClubInfoCubit>().state.club.getOrCrash();
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              isScrollable: false,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              tabs: [
                Tab(
                  icon: const Icon(FontAwesomeIcons.fire),
                  child: AutoSizeText(
                    S().live,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                Tab(
                  icon: const FaIcon(FontAwesomeIcons.calendarPlus),
                  child: AutoSizeText(
                    S().upcoming,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                Tab(
                  icon: const FaIcon(FontAwesomeIcons.calendarMinus),
                  child: AutoSizeText(
                    S().past,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_liveEventsFetched(currentClub.id)),
                    child: BlocListener<EventNotifierCubit, EventNotifierState>(
                      listener: (context, state) {
                        state.lastAddedEvent.fold(
                          () {},
                          (event) {
                            if (_checkIfEventIsLive(event)) {
                              _emitNewEventAdded(context, event);
                            }
                          },
                        );

                        state.lastEditedEvent.fold(
                          () {},
                          (event) {
                            final oldEvent = event.value1;
                            if (_checkIfEventIsLive(oldEvent)) {
                              _emitEventInStateEdited(
                                  context, oldEvent, event.value2);
                            }
                          },
                        );
                      },
                      child: BlocBuilder<EventOverviewBloc, EventOverviewState>(
                        builder: (context, state) {
                          return const LiveEventsTab();
                        },
                      ),
                    ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_upcomingEventsFetched(currentClub.id)),
                    child: BlocListener<EventNotifierCubit, EventNotifierState>(
                      listener: (context, state) {
                        state.lastAddedEvent.fold(
                          () {},
                          (event) {
                            if (_checkIfEventIsUpcoming(event)) {
                              _emitNewEventAdded(context, event);
                            }
                          },
                        );

                        state.lastEditedEvent.fold(
                          () {},
                          (event) {
                            final oldEvent = event.value1;
                            if (_checkIfEventIsUpcoming(oldEvent)) {
                              _emitEventInStateEdited(
                                  context, oldEvent, event.value2);
                            }
                          },
                        );

                        state.lastDeletedEvent.fold(() {}, (event) {
                          if (_checkIfEventIsUpcoming(event)) {
                            _emitEventDeleted(context, event);
                          }
                        });
                      },
                      child: BlocBuilder<EventOverviewBloc, EventOverviewState>(
                        builder: (context, state) {
                          return const UpcomingEventsTab();
                        },
                      ),
                    ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_pastEventsFetched(currentClub.id)),
                    child: BlocBuilder<EventOverviewBloc, EventOverviewState>(
                      builder: (context, state) {
                        return const PastEventsTab();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  EventOverviewEvent _eventsFetched(
      EventFilters filters, EventSortModel sortModel) {
    return EventOverviewEvent.eventsFetched(filters, sortModel);
  }

  EventOverviewEvent _upcomingEventsFetched(String clubId) {
    return _eventsFetched(
      EventFilters.empty().copyWith(
        showOnlyFilter: ShowOnlyFilter(showOnlyUpcoming: true),
        clubFilter: ClubFilter(clubId: clubId),
        dateRangeFilter: DateRangeFilter(fromDate: null, toDate: null),
      ),
      EventSortModel.empty(),
    );
  }

  EventOverviewEvent _pastEventsFetched(String clubId) {
    return _eventsFetched(
      EventFilters.empty().copyWith(
        showOnlyFilter: ShowOnlyFilter(showOnlyPast: true),
        clubFilter: ClubFilter(clubId: clubId),
        dateRangeFilter: DateRangeFilter(fromDate: null, toDate: null),
      ),
      EventSortModel(
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
        dateRangeFilter: DateRangeFilter(fromDate: null, toDate: null),
      ),
      EventSortModel.empty(),
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

  _emitEventDeleted(BuildContext context, Event event) {
    context.read<EventOverviewBloc>().add(
          EventOverviewEvent.eventInStateDeleted(event),
        );
  }

  _checkIfEventIsLive(Event event) {
    final now = DateTime.now();
    return event.eventStartDateTime.isBefore(now) &&
        event.eventEndDateTime.isAfter(now);
  }

  _checkIfEventIsUpcoming(Event event) {
    final now = DateTime.now();
    return event.eventStartDateTime.isAfter(now);
  }
}
