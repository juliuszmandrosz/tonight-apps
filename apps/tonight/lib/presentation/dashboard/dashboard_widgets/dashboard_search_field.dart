import 'package:auto_route/auto_route.dart';
import 'package:common/infrastructure/infrastructure.dart';
import 'package:common/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/artists/artists_cubit.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:tonight/application/collectives/collectives_cubit.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/discover/discover_cubit.dart';
import 'package:tonight/application/discover/selected_discover_tab.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';

class DashboardSearchField extends StatelessWidget {
  const DashboardSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverCubit, DiscoverState>(
      builder: (context, state) {
        final userLocation =
            context.read<UserLocationCubit>().state.userLocation;
        return SearchField(
          // TODO - add translation
          hintText: 'For instance - techno bialystok',
          text: state.phraseFilter.phrase,
          onSubmit: (query) async {
            context
                .read<DiscoverCubit>()
                .applyPhraseFilter(PhraseFilter(phrase: query));
            final phraseFilter = PhraseFilter(phrase: query);
            switch (state.selectedTab) {
              case DiscoverTab.events:
                context.read<EventsBloc>().add(
                      EventsEvent.eventsFetched(
                        phraseFilter: phraseFilter,
                        userLocation: userLocation,
                      ),
                    );
                break;
              case DiscoverTab.collectives:
                context.read<CollectivesCubit>().searchCollectives(query);
                break;
              case DiscoverTab.artists:
                context.read<ArtistsCubit>().searchArtists(query);
                break;
              case DiscoverTab.spots:
                context.read<ClubsBloc>().add(
                      ClubsEvent.clubsFetched(
                        phraseFilter: phraseFilter,
                        userLocation: userLocation,
                      ),
                    );
                break;
            }
            context.tabsRouter.setActiveIndex(
              TonightNavigationDestination.discover.index,
            );
          },
        );
      },
    );
  }
}
