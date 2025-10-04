import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_room_leaderboard/event_room_leaderboard_bloc.dart';
import 'package:tonight/presentation/event_room_leaderboard/widgets/current_user_steps_banner.dart';
import 'package:tonight/presentation/event_room_leaderboard/widgets/leaderboard_list.dart';
import 'package:translations/generated/generated.dart';

class EventRoomLeaderboardPage extends StatelessWidget {
  final Event event;

  const EventRoomLeaderboardPage({super.key, required this.event});

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
            final event = state.event.getOrCrash();
            final now = DateTime.now();
            final isBeforeEvent = event.eventStartDateTime.isAfter(now);
            final isAfterEvent = event.eventEndDateTime.isBefore(now);
            if (isBeforeEvent) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      // TODO - add translation
                      'The event has not started yet.',
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () => _refreshPage(context),
                      child: Text(S().refresh),
                    ),
                  ],
                ),
              );
            }
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
                                if (!isAfterEvent) const SizedBox(height: 12),
                                if (!isAfterEvent)
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
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
                                              // TODO - add translation
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
                      const SizedBox(height: 12),
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
    context
        .read<EventRoomLeaderboardBloc>()
        .add(EventRoomLeaderboardEvent.initialized(event));
  }

  _refreshLeaderboard(BuildContext context) {
    context
        .read<EventRoomLeaderboardBloc>()
        .add(const EventRoomLeaderboardEvent.leaderboardRefreshed());
  }
}
