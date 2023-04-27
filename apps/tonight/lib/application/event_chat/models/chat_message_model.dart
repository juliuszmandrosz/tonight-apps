import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/event_chat/models/chat_user_model.dart';
import 'package:tonight/domain/messages/message_entity.dart';

part 'chat_message_model.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    required String id,
    required String roomId,
    required String text,
    required DateTime createdAt,
    required bool isCurrentUser,
    required ChatUser user,
    @Default(false) bool isLastMessageByUser,
    @Default(false) bool isFirstMessageByUser,
    @Default(false) bool isSameUserAsPrevious,
    @Default(false) bool isFirstMessageFromDay,
    @Default(false) bool isSending,
    @Default(false) bool hasError,
  }) = _ChatMessage;

  factory ChatMessage.fromDomain({
    required Message message,
    required String currentUserId,
    required Message? previousMessage,
    required Message? nextMessage,
    required bool isLastMessage,
    required bool isFirstMessage,
  }) {
    final isLastMessageByUser =
        isFirstMessage || previousMessage?.userId != message.userId;
    final isFirstMessageByUser =
        isLastMessage || nextMessage?.userId != message.userId;
    final isSameUserAsPrevious = _checkIfUserIsSameAsPrevious(
      previousMessage: previousMessage,
      nextMessage: nextMessage,
      message: message,
    );
    final isFirstMessageFromDay = _checkIfFirstMessageFromDay(
      nextMessage: nextMessage,
      message: message,
    );
    return ChatMessage(
      id: message.id,
      roomId: message.roomId,
      text: message.text,
      createdAt: message.createdAt,
      isCurrentUser: message.userId == currentUserId,
      user: ChatUser.fromMessage(message),
      isFirstMessageByUser: isFirstMessageByUser,
      isLastMessageByUser: isLastMessageByUser,
      isSameUserAsPrevious: isSameUserAsPrevious,
      isFirstMessageFromDay: isFirstMessageFromDay,
    );
  }

  Message toDomain() {
    return Message(
      id: id,
      roomId: roomId,
      userId: user.userId,
      username: user.username,
      text: text,
      userPictureUrl: user.userPictureUrl,
      createdAt: createdAt,
    );
  }

  static bool _checkIfUserIsSameAsPrevious({
    required Message message,
    required Message? previousMessage,
    required Message? nextMessage,
  }) {
    if (nextMessage != null) {
      return nextMessage.userId == message.userId;
    }

    if (previousMessage != null) {
      return previousMessage.userId == message.userId;
    }

    return false;
  }

  static bool _checkIfFirstMessageFromDay({
    required Message message,
    required Message? nextMessage,
  }) {
    if (nextMessage == null) {
      return true;
    }

    final nextMessageDate = nextMessage.createdAt;
    final messageDate = message.createdAt;

    return !nextMessageDate.isSameDayAs(messageDate);
  }
}
