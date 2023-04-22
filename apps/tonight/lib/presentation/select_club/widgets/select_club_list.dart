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
        return state.filterClubsStatus.isLoading()
            ? const WaveLoadingIndicator()
            : state.clubs.isEmpty
                ? const SelectClubNoFilteredClubsInfo()
                : Expanded(
                    child: InfiniteList(
                      itemCount: state.clubs.length,
                      onFetchData: () => context
                          .read<SelectClubBloc>()
                          .add(const SelectClubEvent.nextPageClubsFetched()),
                      hasReachedMax: state.hasReachedMax,
                      isLoading: state.filterClubsStatus.isLoading(),
                      hasError: state.filterClubsStatus.isFailure(),
                      itemBuilder: (_, i) =>
                          SelectClubTile(club: state.clubs[i]),
                      separatorBuilder: (_, __) => const Divider(height: 32),
                    ),
                  );
      },
    );
  }
}
