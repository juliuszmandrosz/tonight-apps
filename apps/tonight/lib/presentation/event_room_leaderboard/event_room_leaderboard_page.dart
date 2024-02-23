import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_room_leaderboard/event_room_leaderboard_bloc.dart';
import 'package:tonight/presentation/event_room_leaderboard/widgets/current_user_steps_banner.dart';
import 'package:tonight/presentation/event_room_leaderboard/widgets/leaderboard_list.dart';

class EventRoomLeaderboardPage extends StatelessWidget {
  final String eventId;

  const EventRoomLeaderboardPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventRoomLeaderboardBloc, EventRoomLeaderboardState>(
      listenWhen: (p, c) => p.permissionsGranted != c.permissionsGranted,
      listener: (context, state) {
        if (state.permissionsGranted) {
          _refreshPage(context);
        }
      },
      builder: (context, state) {
        switch (state.initialStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();

          case CubitStatus.loading:
            return const WaveLoadingIndicator();

          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => _refreshPage(context),
            );
          case CubitStatus.success:
            return RefreshIndicator(
              onRefresh: () async => _refreshLeaderboard(context),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      state.permissionsGranted
                          ? Column(
                              children: [
                                CurrentUserStepsBanner(
                                  stepCount:
                                      state.currentUser.getOrCrash().stepCount,
                                ),
                                const SizedBox(height: 12),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: ListTileTheme(
                                    contentPadding: EdgeInsets.zero,
                                    dense: true,
                                    child: ExpansionTile(
                                      leading:
                                          FaIcon(FontAwesomeIcons.circleInfo),
                                      // TODO - add translation
                                      title: Text('Info'),
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 8),
                                          child: Text(
                                            'In order to count your steps, '
                                            'you need to be in the event room eg. chat tab, leaderboard tab etc. '
                                            'Steps are counted in the background, you can block your phone. Steps are updated every 10 seconds automatically. '
                                            'Pull to refresh the leaderboard.',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Card(
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Text(
                                      // TODO - add translation
                                      'In order to count your steps, '
                                      'we need to access your location and activity recognition.',
                                      style: context.titleSmall,
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 12),
                                    state.permissionsStatus.isLoading()
                                        ? const CircleLoadingIndicator()
                                        : ElevatedButton(
                                            onPressed: () => context
                                                .read<
                                                    EventRoomLeaderboardBloc>()
                                                .add(
                                                  const EventRoomLeaderboardEvent
                                                      .permissionsRequested(),
                                                ),
                                            child:
                                                // TODO - add translation
                                                const Text(
                                              'Enable Step Counting',
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                      const SizedBox(height: 20),
                      const LeaderboardList(),
                    ],
                  ),
                ),
              ),
            );
        }
      },
    );
  }

  _refreshPage(BuildContext context) {
    // final location = context.read<UserLocationCubit>().state.userLocation;
    context
        .read<EventRoomLeaderboardBloc>()
        .add(EventRoomLeaderboardEvent.initialized(eventId));
  }

  _refreshLeaderboard(BuildContext context) {
    context
        .read<EventRoomLeaderboardBloc>()
        .add(const EventRoomLeaderboardEvent.leaderboardRefreshed());
  }
}
