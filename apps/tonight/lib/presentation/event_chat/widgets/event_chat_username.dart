import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventChatUsername extends StatelessWidget {
  final ChatMessage message;

  const EventChatUsername({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.unfocus();
        context.pushRoute(
          UserDetailsRoute(userId: message.user.userId),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          message.user.username,
          style: context.titleSmall.copyWith(
            color: message.user.color,
          ),
        ),
      ),
    );
  }
}
