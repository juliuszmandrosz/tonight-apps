import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/clubs/clubs_page.dart';
import 'package:tonight/presentation/events/events_page.dart';
import 'package:translations/translations.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            isScrollable: false,
            labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            tabs: [
              Tab(
                child: AutoSizeText(
                  S().events(2),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: AutoSizeText(
                  S().clubs(2),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          const Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                EventsPage(),
                ClubsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
