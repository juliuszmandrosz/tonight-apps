import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/chats/model/chat_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ChatListTile extends StatelessWidget {
  final Chat chat;

  const ChatListTile({required this.chat, super.key});

  String get _messageText {
    if (chat.isLastMessageJoinedInfo) {
      return '${chat.lastMessageUsername} ${S().joinedChat}';
    }
    if (chat.isLastMessageLeftInfo) {
      return '${chat.lastMessageUsername} ${S().leftChat}';
    }
    return '${chat.lastMessageUsername}: ${chat.lastMessageText!}';
  }

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(EventRoomRoute(eventId: chat.roomId)),
      leading: ProfilePictureContainer(
        username: chat.roomName,
        profilePictureUrl: chat.roomPhotoUrl,
        backgroundColor: context.surfaceColor,
        textColor: context.onSurfaceColor,
        textStyle: context.titleSmall,
        imageSize: 50,
      ),
      title: Text(
        chat.roomName,
        style: context.titleSmall,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: chat.lastMessageText != null && chat.lastMessageUsername != null
          ? Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                _messageText,
                style: context.bodySmall.copyWith(
                  color: context.secondaryColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          : null,
      trailing: chat.lastMessageCreatedAt != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  chat.lastMessageCreatedAt!.isBefore(DateTime.now().startOfDay)
                      ? context
                          .formatDateTimeToLocaleMD(chat.lastMessageCreatedAt!)
                      : context
                          .formatDateTimeToLocaleHM(chat.lastMessageCreatedAt!),
                  style: context.labelSmall,
                ),
              ],
            )
          : null,
    );
  }
}
