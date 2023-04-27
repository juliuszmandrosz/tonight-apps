import 'dart:math';

import 'package:account_settings/domain/user/user_account_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/messages/message_entity.dart';

part 'chat_user_model.freezed.dart';

@freezed
class ChatUser with _$ChatUser {
  static const minColorValue = 80;
  static const maxColorValue = 200;

  const factory ChatUser({
    required Color color,
    required String userId,
    required String username,
    String? userPictureUrl,
  }) = _ChatUser;

  factory ChatUser.fromDomain(UserAccount userAccount) {
    return ChatUser(
      color: _generateColorFromUserId(userAccount.id),
      userId: userAccount.id,
      username: userAccount.username,
      userPictureUrl: userAccount.profilePictureUrl.isEmpty
          ? null
          : userAccount.profilePictureUrl,
    );
  }

  factory ChatUser.fromMessage(Message message) {
    return ChatUser(
      color: _generateColorFromUserId(message.userId),
      userId: message.userId,
      username: message.username,
      userPictureUrl: message.userPictureUrl,
    );
  }

  static Color _generateColorFromUserId(String userId) {
    final hash = userId.hashCode;
    final random = Random(hash);
    final r = generateColorComponent(random);
    final g = generateColorComponent(random);
    final b = generateColorComponent(random);
    return Color.fromRGBO(r, g, b, 1);
  }

  static int generateColorComponent(Random random) {
    return minColorValue +
        (random.nextDouble() * (maxColorValue - minColorValue)).toInt();
  }
}
