import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/domain/domain.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_event_notifier/add_event_notifier_cubit.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/events/widgets/live_events_tab.dart';
import 'package:raver_partners/presentation/events/widgets/past_events_tab.dart';
import 'package:raver_partners/presentation/events/widgets/upcoming_events_tab.dart';
import 'package:raver_translations/raver_translations.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentClub = context.read<ClubInfoCubit>().state.club.getOrElse(
          () => throw NotAuthenticatedError(),
        );

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
                      ..add(_eventsFetched(
                        EventFilters.empty().copyWith(
                          showOnlyFilter: ShowOnlyFilter(showOnlyLive: true),
                          clubFilter: ClubFilter(clubId: currentClub.id),
                        ),
                        SortModel.empty(),
                      )),
                    child: BlocBuilder<AddEventNotifierCubit,
                        AddEventNotifierState>(
                      builder: (context, state) {
                        _emitNewEventAdded(state, context);
                        return const LiveEventsTab();
                      },
                    ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_eventsFetched(
                        EventFilters.empty().copyWith(
                          showOnlyFilter:
                              ShowOnlyFilter(showOnlyUpcoming: true),
                          clubFilter: ClubFilter(clubId: currentClub.id),
                        ),
                        SortModel.empty(),
                      )),
                    child: BlocBuilder<AddEventNotifierCubit,
                        AddEventNotifierState>(
                      builder: (context, state) {
                        _emitNewEventAdded(state, context);
                        return const UpcomingEventsTab();
                      },
                    ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<EventOverviewBloc>()
                      ..add(_eventsFetched(
                        EventFilters.empty().copyWith(
                          showOnlyFilter: ShowOnlyFilter(showOnlyPast: true),
                          clubFilter: ClubFilter(clubId: currentClub.id),
                        ),
                        SortModel(
                          fieldName: eventStartDateTime,
                          direction: SortDirection.desc,
                        ),
                      )),
                    child: BlocBuilder<AddEventNotifierCubit,
                        AddEventNotifierState>(
                      builder: (context, state) {
                        _emitNewEventAdded(state, context);
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

  _emitNewEventAdded(
      AddEventNotifierState addEventNotifierState, BuildContext context) {
    addEventNotifierState.lastAddedEvent.fold(
      () {},
      (event) => context
          .read<EventOverviewBloc>()
          .add(EventOverviewEvent.eventAdded(event)),
    );
  }
}
