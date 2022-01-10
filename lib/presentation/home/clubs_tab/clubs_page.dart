import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_bloc.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/club_filter.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_card.dart';
import 'package:raver/presentation/home/widgets/club_search_bar.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ClubsOverviewBloc>(
            create: (context) => getIt<ClubsOverviewBloc>()
              ..add(ClubsOverviewEvent.onClubPageOpened(ClubFilter.empty()))),
        //TODO: Need to look if injectable has possibility to add factory params
        BlocProvider(
            create: (context) => getIt<ClubFiltersBloc>(
                param1: BlocProvider.of<ClubsOverviewBloc>(context))),
      ],
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ClubSearchBar(),
            BlocBuilder<ClubsOverviewBloc, ClubsOverviewState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  loadFailure: (state) => Center(
                    child: Text(state.clubFailure.toString()),
                  ),
                  loadSuccess: (state) {
                    return Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.clubs.length,
                        itemBuilder: (context, index) {
                          final club = state.clubs[index];
                          return ClubCard(club: club);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ]),
    );
  }
}
