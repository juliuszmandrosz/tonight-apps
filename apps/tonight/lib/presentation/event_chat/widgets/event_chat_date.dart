import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';

class EventChatDate extends StatelessWidget {
  final ChatMessage message;

  const EventChatDate({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 12),
      child: Text(
        context.formatDateTimeToLocaleMD(message.createdAt),
        style: context.labelSmall,
      ),
    );
  }
}
