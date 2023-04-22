import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:tonight/presentation/clubs/widgets/club_card.dart';
import 'package:tonight/presentation/clubs/widgets/no_clubs_info.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  static const heroPhrase = 'clubsPageHero';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClubsBloc, ClubsState>(
      listenWhen: (previous, current) =>
          previous.getClubsStatus != current.getClubsStatus,
      listener: (context, state) {
        if (state.getClubsStatus.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () => _refreshClubs(context),
            ),
          );
        }
      },
      builder: (context, state) {
        switch (state.getClubsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.failure:
            return const SizedBox.shrink();

          case CubitStatus.success:
            return state.clubs.isEmpty
                ? NoClubsInfo(onClubsRefreshed: _refreshClubs)
                : RefreshIndicator(
                    onRefresh: () async => _refreshClubs(context),
                    child: InfiniteList(
                      itemCount: state.clubs.length,
                      hasError: state.nextPageStatus.isFailure(),
                      isLoading: state.nextPageStatus.isLoading(),
                      hasReachedMax: state.hasReachedMax,
                      onFetchData: () => context
                          .read<ClubsBloc>()
                          .add(const ClubsEvent.nextPageClubsFetched()),
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (_, i) => ClubCard(
                        club: state.clubs[i],
                        heroPhrase: heroPhrase,
                      ),
                    ),
                  );
        }
      },
    );
  }

  Future<void> _refreshClubs(BuildContext context) async {
    context.read<ClubsBloc>().add(const ClubsEvent.clubsRefreshed());
  }
}
