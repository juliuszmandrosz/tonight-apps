import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_participants/event_participants_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_participants/widgets/event_participant_list_tile.dart';

class EventParticipantsPage extends StatelessWidget {
  final String eventId;

  const EventParticipantsPage({
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventParticipantsBloc>()
        ..add(EventParticipantsEvent.participantsFetched(eventId)),
      child: Scaffold(
        appBar: const TonightAppBar(
          // TODO - add translation
          title: 'Uczestnicy',
        ),
        body: BlocBuilder<EventParticipantsBloc, EventParticipantsState>(
          builder: (context, state) {
            switch (state.fetchParticipantsStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();
              case CubitStatus.loading:
                return const WaveLoadingIndicator();
              case CubitStatus.failure:
                return const SizedBox.shrink();
              case CubitStatus.success:
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: state.participants.isEmpty
                      ? Center(
                          // TODO - add translation
                          child: Text(
                            'Brak uczestników',
                            style: context.titleMedium,
                          ),
                        )
                      : RefreshIndicator(
                          onRefresh: () async =>
                              context.read<EventParticipantsBloc>().add(
                                    EventParticipantsEvent.participantsFetched(
                                        eventId),
                                  ),
                          child: InfiniteList(
                            itemCount: state.participants.length,
                            hasReachedMax: state.hasReachedMax,
                            hasError: state.fetchParticipantsStatus.isFailure(),
                            isLoading:
                                state.fetchParticipantsStatus.isLoading(),
                            separatorBuilder: (_, __) => const Divider(height: 20),
                            itemBuilder: (_, i) => EventParticipantListTile(
                              participant: state.participants[i],
                            ),
                            onFetchData: () =>
                                context.read<EventParticipantsBloc>().add(
                                      const EventParticipantsEvent
                                          .nextPageParticipantsFetched(),
                                    ),
                          ),
                        ),
                );
            }
          },
        ),
      ),
    );
  }
}
