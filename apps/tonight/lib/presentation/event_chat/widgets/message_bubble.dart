import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_date.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_message_bubble.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_user_container.dart';

class MessageBubble extends StatelessWidget {
  final ChatMessage message;

  const MessageBubble({
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (message.isFirstMessageFromDay) EventChatDate(message: message),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              EventChatUserContainer(message: message),
              const SizedBox(width: 8.0),
              EventChatMessageBubble(message: message),
            ],
          ),
        ],
      ),
    );
  }
}
