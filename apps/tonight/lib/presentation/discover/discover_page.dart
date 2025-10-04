import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/discover/discover_cubit.dart';
import 'package:tonight/presentation/artists/artists_page.dart';
import 'package:tonight/presentation/clubs/clubs_page.dart';
import 'package:tonight/presentation/collectives/collectives_page.dart';
import 'package:tonight/presentation/discover/widgets/discover_sliver_app_bar.dart';
import 'package:tonight/presentation/events/events_page.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: context.read<DiscoverCubit>().state.selectedTab.index,
      length: 4,
      child: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          DiscoverSliverAppBar(innerBoxIsScrolled: innerBoxIsScrolled),
        ],
        body: const Padding(
          padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              EventsPage(),
              CollectivesPage(),
              ArtistsPage(),
              ClubsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
