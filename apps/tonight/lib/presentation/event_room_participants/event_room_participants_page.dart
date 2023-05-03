import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_room_participants/event_room_participants_bloc.dart';
import 'package:tonight/presentation/event_room_participants/widgets/event_room_participant_list_tile.dart';
import 'package:translations/translations.dart';

class EventRoomParticipantsPage extends StatelessWidget {
  const EventRoomParticipantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventRoomParticipantsBloc, EventRoomParticipantsState>(
      builder: (context, state) {
        switch (state.fetchParticipantsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context
                  .read<EventRoomParticipantsBloc>()
                  .add(
                    const EventRoomParticipantsEvent.participantsRefreshed(),
                  ),
            );
          case CubitStatus.success:
            return Padding(
              padding: const EdgeInsets.all(8),
              child: state.participants.isEmpty
                  ? Center(
                      child: Text(
                        S().noParticipants,
                        style: context.titleMedium,
                      ),
                    )
                  : RefreshIndicator(
                      onRefresh: () async =>
                          context.read<EventRoomParticipantsBloc>().add(
                                const EventRoomParticipantsEvent
                                    .participantsRefreshed(),
                              ),
                      child: InfiniteList(
                        itemCount: state.participants.length,
                        hasReachedMax: state.hasReachedMax,
                        hasError: state.fetchParticipantsStatus.isFailure(),
                        isLoading: state.fetchParticipantsStatus.isLoading(),
                        separatorBuilder: (_, __) => const Divider(height: 20),
                        itemBuilder: (_, i) => EventRoomParticipantListTile(
                          participant: state.participants[i],
                        ),
                        onFetchData: () => context
                            .read<EventRoomParticipantsBloc>()
                            .add(const EventRoomParticipantsEvent
                                .nextPageParticipantsFetched()),
                      ),
                    ),
            );
        }
      },
    );
  }
}
