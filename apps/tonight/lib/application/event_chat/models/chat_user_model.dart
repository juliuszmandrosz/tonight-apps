import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:common/utils/generate_user_color.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/messages/message_entity.dart';
import 'package:tonight/domain/participants/participant_entity.dart';

part 'chat_user_model.freezed.dart';

@freezed
class ChatUser with _$ChatUser {
  const ChatUser._();

  const factory ChatUser({
    required Color color,
    required String userId,
    required String username,
    String? userPictureUrl,
  }) = _ChatUser;

  factory ChatUser.fromUserAccount(UserAccount userAccount) {
    return ChatUser(
      color: generateColorFromUserId(userAccount.id),
      userId: userAccount.id,
      username: userAccount.username,
      userPictureUrl: userAccount.profilePictureUrl.isEmpty
          ? null
          : userAccount.profilePictureUrl,
    );
  }

  factory ChatUser.fromMessage(Message message) {
    return ChatUser(
      color: generateColorFromUserId(message.userId),
      userId: message.userId,
      username: message.username,
      userPictureUrl: message.userPictureUrl,
    );
  }

  factory ChatUser.fromParticipant(Participant participant) {
    return ChatUser(
      color: generateColorFromUserId(participant.userId),
      userId: participant.userId,
      username: participant.username,
      userPictureUrl: participant.profilePictureUrl,
    );
  }
}
