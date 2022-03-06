import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_cubit.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_card.dart';
import 'package:raver/presentation/home/widgets/club_filter_section.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ClubsOverviewCubit>(
          create: (context) =>
              getIt<ClubsOverviewCubit>()..getClubs(ClubFilter.empty()),
        ),
        BlocProvider(
          create: (context) => getIt<ClubFiltersCubit>(),
        ),
      ],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ClubSearchBar(),
          BlocBuilder<ClubsOverviewCubit, ClubsOverviewState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loadFailure: (state) => const Center(
                  child: Text("Failed fetching clubs"),
                ),
                loadSuccess: (state) {
                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.clubs.length,
                      itemBuilder: (context, index) {
                        final club = state.clubs[index];
                        return ClubCard(club: club, index: index);
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
