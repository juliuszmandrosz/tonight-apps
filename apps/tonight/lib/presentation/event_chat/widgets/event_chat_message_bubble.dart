import 'package:common/extensions/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/presentation/event_chat/widgets/bubble_background.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_message_content.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_retry_icon.dart';

class EventChatMessageBubble extends StatelessWidget {
  final ChatMessage message;

  const EventChatMessageBubble({required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageAlignment =
        message.isCurrentUser ? Alignment.topRight : Alignment.topLeft;
    return Expanded(
      child: FractionallySizedBox(
        alignment: messageAlignment,
        widthFactor: message.hasError ? 0.90 : 0.8,
        child: Row(
          children: [
            if (message.hasError) EventChatRetryIcon(message: message),
            Expanded(
              child: Align(
                alignment: messageAlignment,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  child: BubbleBackground(
                    colors: [
                      if (message.isCurrentUser) ...[
                        const Color(0xFF4F45B7),
                        Color(context.primaryColor.value).withOpacity(0.95),
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
          ],
        ),
      ),
    );
  }
}
