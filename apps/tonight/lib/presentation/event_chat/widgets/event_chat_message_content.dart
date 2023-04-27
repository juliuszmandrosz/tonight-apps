import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/circle_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/presentation/event_chat/widgets/event_chat_username.dart';

class EventChatMessageContent extends StatelessWidget {
  final ChatMessage message;

  const EventChatMessageContent({required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!message.isCurrentUser && message.isFirstMessageByUser)
                  EventChatUsername(message: message),
                Text(
                  message.text,
                  style: context.titleSmall,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8.0),
          message.isSending
              ? const CircleLoadingIndicator(size: 12)
              : Text(
                  context.formatDateTimeToLocaleHM(
                    message.createdAt,
                  ),
                  style: context.labelSmall.copyWith(
                    color: context.hintColor,
                  ),
                ),
        ],
      ),
    );
  }
}
