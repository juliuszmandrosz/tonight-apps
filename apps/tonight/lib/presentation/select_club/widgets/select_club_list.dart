import 'package:common/extensions/cubit_status_extensions.dart';
import 'package:common/presentation/bottom_loader.dart';
import 'package:common/presentation/dots_loading_indicator.dart';
import 'package:common/presentation/next_page_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/select_club/select_club_cubit.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_no_filtered_clubs_info.dart';
import 'package:tonight/presentation/select_club/widgets/select_club_tile.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class SelectClubList extends StatelessWidget {
  const SelectClubList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectClubCubit, SelectClubState>(
      builder: (context, state) {
        final selectClubCubit = context.read<SelectClubCubit>();
        final userLocationCubit = context.read<UserLocationCubit>();
        return state.filterClubsStatus.isLoading()
            ? const DotsLoadingIndicator()
            : Expanded(
                child: InfiniteList(
                  itemCount: state.clubs.length,
                  isLoading: state.fetchNextPageStatus.isLoading(),
                  hasError: state.fetchNextPageStatus.isFailure(),
                  hasReachedMax: state.hasReachedMax,
                  onFetchData: () => selectClubCubit.fetchNextClubsPage(
                    userLocationCubit.getCurrentLatLngOrCrash(),
                  ),
                  separatorBuilder: (_, __) => const Divider(height: 32),
                  itemBuilder: (_, i) => SelectClubTile(club: state.clubs[i]),
                  loadingBuilder: (_) => const BottomLoader(),
                  errorBuilder: (_) => NextPageError(
                    retryCallback: () => selectClubCubit.fetchNextClubsPage(
                      userLocationCubit.getCurrentLatLngOrCrash(),
                    ),
                  ),
                  emptyBuilder: (_) => const SelectClubNoFilteredClubsInfo(),
                ),
              );
      },
    );
  }
}
