import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_participants/event_participants_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_participants/widgets/event_participant_list_tile.dart';
import 'package:translations/translations.dart';

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
        appBar: TonightAppBar(title: S().participants),
        body: BlocBuilder<EventParticipantsBloc, EventParticipantsState>(
          builder: (context, state) {
            switch (state.fetchParticipantsStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();
              case CubitStatus.loading:
                return const WaveLoadingIndicator();
              case CubitStatus.failure:
                return FailureInfo(
                  retryCallback: () => context
                      .read<EventParticipantsBloc>()
                      .add(EventParticipantsEvent.participantsFetched(eventId)),
                );
              case CubitStatus.success:
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: state.participants.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S().noParticipants,
                                style: context.titleSmall,
                              ),
                              const SizedBox(height: 20),
                              OutlinedButton(
                                onPressed: () =>
                                    context.read<EventParticipantsBloc>().add(
                                          EventParticipantsEvent
                                              .participantsFetched(eventId),
                                        ),
                                child: Text(S().refresh),
                              ),
                            ],
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
                            hasError: state.nextPageStatus.isFailure(),
                            isLoading: state.nextPageStatus.isLoading(),
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 20),
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
