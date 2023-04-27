import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';

class EventChatUsername extends StatelessWidget {
  final ChatMessage message;

  const EventChatUsername({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(bottom: 8),
      child: Text(
        message.user.username,
        style: context.titleSmall.copyWith(
          color: message.user.color,
        ),
      ),
    );
  }
}
