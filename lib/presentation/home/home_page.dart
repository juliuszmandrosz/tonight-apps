import 'package:flutter/material.dart';

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
          children: const [
            TabBar(
              tabs: [
                Tab(text: "Events"),
                Tab(text: "Clubs"),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    EventOverviewPage(),
                    ClubsPage(),
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
