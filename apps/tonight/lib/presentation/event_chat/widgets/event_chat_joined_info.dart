import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventChatJoinedInfo extends StatelessWidget {
  final ChatMessage message;

  const EventChatJoinedInfo({required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.unfocus();
        context.pushRoute(UserDetailsRoute(userId: message.user.userId));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 16),
        child: Text(
          // TODO - add translation
          '${message.user.username} dołączył/a do czatu',
          style: context.labelSmall,
        ),
      ),
    );
  }
}
