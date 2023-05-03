import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_input.dart';
import 'package:tonight/presentation/event_chat/widgets/message_bubble.dart';
import 'package:translations/translations.dart';

class EventChatPage extends StatelessWidget {
  const EventChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventChatBloc, EventChatState>(
      builder: (context, state) {
        switch (state.initialStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return const SizedBox.shrink();
          case CubitStatus.success:
            return Column(
              children: [
                state.displayedMessages.isEmpty
                    ? Expanded(
                        child: Center(
                          child: Text(
                            S().noMessages,
                            style: context.titleMedium,
                          ),
                        ),
                      )
                    : Expanded(
                        child: InfiniteList(
                          itemCount: state.displayedMessages.length,
                          onFetchData: () => context.read<EventChatBloc>().add(
                              const EventChatEvent.nextPageMessagesFetched()),
                          hasReachedMax: state.hasReachedMax,
                          isLoading: state.nextPageStatus.isLoading(),
                          hasError: state.nextPageStatus.isFailure(),
                          itemBuilder: (_, i) => MessageBubble(
                            message: state.displayedMessages[i],
                          ),
                          separatorBuilder: (_, i) =>
                              state.displayedMessages[i].isSameUserAsPrevious
                                  ? const SizedBox(height: 2)
                                  : const SizedBox(height: 12),
                          isReversed: true,
                        ),
                      ),
                const SizedBox(height: 8),
                const EventChatInput(),
              ],
            );
        }
      },
    );
  }
}
