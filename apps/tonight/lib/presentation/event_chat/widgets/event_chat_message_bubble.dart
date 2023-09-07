import 'package:common/common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_chat/bloc/event_chat_bloc.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/presentation/event_chat/widgets/bubble_background.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_bottom_sheet.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_message_content.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_retry_icon.dart';

class EventChatMessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool isComment;

  const EventChatMessageBubble({
    required this.message,
    required this.isComment,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageAlignment =
        message.isCurrentUser ? Alignment.topRight : Alignment.topLeft;
    return BlocBuilder<EventChatBloc, EventChatState>(
      buildWhen: (p, c) =>
          !listEquals(p.reportingMessageIds, c.reportingMessageIds),
      builder: (context, state) {
        final isReporting = state.reportingMessageIds.contains(message.id);
        return Expanded(
          child: GestureDetector(
            onLongPress: () async {
              context.unfocus();
              await showModalBottomSheet(
                context: context,
                builder: (_) => EventChatBottomSheet(
                  message: message,
                  blocContext: context,
                ),
              );
            },
            child: FractionallySizedBox(
              alignment: messageAlignment,
              widthFactor: message.hasError || isReporting ? 0.9 : 0.8,
              child: Row(
                children: [
                  if (message.hasError)
                    EventChatRetryIcon(message: message, isComment: isComment),
                  if (isReporting && message.isCurrentUser)
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: CircleLoadingIndicator(size: 16),
                    ),
                  Expanded(
                    child: Align(
                      alignment: messageAlignment,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16.0)),
                        child: BubbleBackground(
                          colors: [
                            if (message.isCurrentUser) ...[
                              const Color(0xFF4F45B7),
                              Color(context.primaryColor.value)
                                  .withOpacity(0.95),
                            ] else ...const [
                              Color(0xFF1C1C1C),
                              Color(0xFF303030),
                            ],
                          ],
                          child: EventChatMessageContent(message: message),
                        ),
                      ),
                    ),
                  ),
                  if (isReporting && !message.isCurrentUser)
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: CircleLoadingIndicator(size: 16),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
