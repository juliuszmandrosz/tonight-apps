import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/profile_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventChatUserContainer extends StatelessWidget {
  final ChatMessage message;

  const EventChatUserContainer({
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 40,
          child: InkWell(
            onTap: () async {
              context.unfocus();
              await context.pushRoute(
                UserDetailsRoute(userId: message.user.userId),
              );
            },
            child: !message.isCurrentUser && message.isLastMessageByUser
                ? ProfilePictureContainer(
                    imageSize: 40,
                    profilePictureUrl: message.user.userPictureUrl,
                    username: message.user.username,
                    textStyle: context.titleSmall,
                    backgroundColor: message.user.color,
                    textColor: context.onSurfaceColor,
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
