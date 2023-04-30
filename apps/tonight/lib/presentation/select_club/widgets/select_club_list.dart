import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/select_club/select_club_bloc.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_no_filtered_clubs_info.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_tile.dart';

class SelectClubList extends StatelessWidget {
  const SelectClubList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectClubBloc, SelectClubState>(
      builder: (context, state) {
        return state.filterVenuesStatus.isLoading()
            ? const WaveLoadingIndicator()
            : state.venues.isEmpty
                ? const SelectClubNoFilteredClubsInfo()
                : Expanded(
                    child: InfiniteList(
                      itemCount: state.venues.length,
                      onFetchData: () => context
                          .read<SelectClubBloc>()
                          .add(const SelectClubEvent.nextPageVenuesFetched()),
                      hasReachedMax: state.hasReachedMax,
                      isLoading: state.filterVenuesStatus.isLoading(),
                      hasError: state.filterVenuesStatus.isFailure(),
                      itemBuilder: (_, i) =>
                          SelectClubTile(venue: state.venues[i]),
                      separatorBuilder: (_, __) => const Divider(height: 32),
                    ),
                  );
      },
    );
  }
}
