import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_room_leaderboard/event_room_leaderboard_bloc.dart';
import 'package:tonight/presentation/event_room_leaderboard/widgets/leaderboard_tile.dart';

class LeaderboardList extends StatelessWidget {
  const LeaderboardList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventRoomLeaderboardBloc, EventRoomLeaderboardState>(
      builder: (context, state) {
        switch (state.refreshLeaderboardStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => _refreshLeaderboard(context),
            );
          case CubitStatus.success:
            return state.participants.isEmpty
                ? NoResults(
                    // TODO - add translations
                    message: 'No participants',
                    onRefresh: () => _refreshLeaderboard(context))
                : InfiniteList(
                    shrinkWrap: true,
                    itemCount: state.participants.length,
                    hasError: state.nextPageStatus.isFailure(),
                    isLoading: state.nextPageStatus.isLoading(),
                    hasReachedMax: state.hasReachedMax,
                    onFetchData: () => context
                        .read<EventRoomLeaderboardBloc>()
                        .add(const EventRoomLeaderboardEvent
                            .nextPageLeaderboardFetched()),
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (_, i) => LeaderboardTile(
                      participant: state.participants[i],
                      index: i,
                    ),
                  );
        }
      },
    );
  }

  _refreshLeaderboard(BuildContext context) {
    context
        .read<EventRoomLeaderboardBloc>()
        .add(const EventRoomLeaderboardEvent.leaderboardRefreshed());
  }
}
