import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/artists/artists_cubit.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:tonight/application/collectives/collectives_cubit.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/clubs/clubs_page.dart';
import 'package:tonight/presentation/collectives/collectives_page.dart';
import 'package:tonight/presentation/discover/widgets/discover_sliver_app_bar.dart';
import 'package:tonight/presentation/events/events_page.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final location = context.read<UserLocationCubit>().state.userLocation;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<EventsBloc>()..add(EventsEvent.eventsFetched(location)),
        ),
        BlocProvider(
          create: (_) =>
              getIt<ClubsBloc>()..add(ClubsEvent.clubsFetched(location)),
        ),
        BlocProvider(
          create: (_) => getIt<CollectivesCubit>()..getCollectives(),
        ),
        BlocProvider(
          create: (_) => getIt<ArtistsCubit>()..getArtists(),
        ),
      ],
      child: DefaultTabController(
        length: 3,
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
                ClubsPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
