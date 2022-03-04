import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/events/event_overview/event_overview_bloc.dart';
import 'package:raver/domain/events/filters/event_filter.dart';
import 'package:raver/injection.dart';

import 'clubs_tab/clubs_page.dart';
import 'events_tab/event_overview_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  text: "Events",
                ),
                Tab(
                  text: "Clubs",
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TabBarView(
                  children: [
                    BlocProvider(
                      create: (context) => getIt<EventOverviewBloc>()
                        ..add(
                          EventOverviewEvent.loadEvents(
                            EventFilter.empty(),
                          ),
                        ),
                      child: const EventOverviewPage(),
                    ),
                    const ClubsPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
