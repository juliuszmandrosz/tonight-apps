import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/challenge_story/cubit/challenge_story_cubit.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_input.dart';
import 'package:tonight/presentation/event_chat/widgets/message_bubble.dart';

class StoryCommentsPage extends StatelessWidget {
  final String storyId;
  final String storyOwnerId;
  final Participant currentUser;
  final BuildContext blocContext;

  const StoryCommentsPage({
    required this.storyId,
    required this.storyOwnerId,
    required this.currentUser,
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TonightAppBar(
        title: '',
        backgroundColor: context.backgroundColor,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<EventChatBloc>()
              ..add(
                EventChatEvent.chatInitialized(
                  roomId: storyId,
                  participant: currentUser,
                ),
              ),
          ),
          BlocProvider.value(
            value: blocContext.read<ChallengeStoryCubit>(),
          ),
        ],
        child: BlocConsumer<EventChatBloc, EventChatState>(
          listenWhen: (p, c) =>
              p.snackbarMessage != c.snackbarMessage ||
              p.newMessage != c.newMessage,
          listener: (context, state) {
            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );

            state.newMessage.fold(
              () {},
              (_) => context
                  .read<ChallengeStoryCubit>()
                  .onCommentAdded(storyOwnerId, storyId),
            );
          },
          builder: (context, state) {
            switch (state.initialStatus) {
              case CubitStatus.initial:
                return const SizedBox.shrink();
              case CubitStatus.loading:
                return const WaveLoadingIndicator();
              case CubitStatus.failure:
                return FailureInfo(
                  retryCallback: () => context.read<EventChatBloc>().add(
                        EventChatEvent.chatInitialized(
                          roomId: storyId,
                          participant: currentUser,
                        ),
                      ),
                );
              case CubitStatus.success:
                return Column(
                  children: [
                    state.displayedMessages.isEmpty
                        ? Expanded(
                            child: Center(
                              child: Text(
                                // TODO - add translation
                                'Brak komentarzy',
                                style: context.titleMedium,
                              ),
                            ),
                          )
                        : Expanded(
                            child: InfiniteList(
                              itemCount: state.displayedMessages.length,
                              onFetchData: () => context
                                  .read<EventChatBloc>()
                                  .add(const EventChatEvent
                                      .nextPageMessagesFetched()),
                              hasReachedMax: state.hasReachedMax,
                              isLoading: state.nextPageStatus.isLoading(),
                              hasError: state.nextPageStatus.isFailure(),
                              itemBuilder: (_, i) => MessageBubble(
                                message: state.displayedMessages[i],
                                isComment: true,
                              ),
                              separatorBuilder: (_, i) => state
                                      .displayedMessages[i].isSameUserAsPrevious
                                  ? const SizedBox(height: 2)
                                  : const SizedBox(height: 12),
                              isReversed: true,
                            ),
                          ),
                    const SizedBox(height: 12),
                    const EventChatInput(isComment: true),
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
