import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/club_filter.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_card.dart';
import 'package:raver/presentation/home/widgets/club_search_bar.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClubsOverviewBloc>(
      create: (context) {
        return getIt<ClubsOverviewBloc>()
          ..add(const ClubsOverviewEvent.onClubPageOpened(
              ClubFilter(phrase: "")));
      },
      child: BlocBuilder<ClubsOverviewBloc, ClubsOverviewState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadFailure: (state) => Center(
              child: Text(state.clubFailure.toString()),
            ),
            loadSuccess: (state) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClubSearchBar(onSearch: () {}),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.clubs.length,
                      itemBuilder: (context, index) {
                        final club = state.clubs[index];
                        return ClubCard(club: club);
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
