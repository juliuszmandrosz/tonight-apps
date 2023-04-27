import 'package:account_settings/account_settings.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:tonight/application/event_chat/aggregator/event_chat_failure.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/application/event_chat/models/chat_user_model.dart';
import 'package:tonight/domain/messages/message_facade.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';
import 'package:uuid/uuid.dart';

class EventChatAggregator {
  final UserAccountFacade _userAccountFacade;
  final MessageFacade _messageFacade;
  final ParticipantFacade _participantFacade;

  EventChatAggregator(
    this._userAccountFacade,
    this._messageFacade,
    this._participantFacade,
  );

  Stream<Either<ChatMessage, ChatMessage>> sendMessage({
    required String roomId,
    required String text,
    required ChatUser currentUser,
    required ChatMessage? previousMessage,
  }) async* {
    final createdAt = DateTime.now();
    final messageId = const Uuid().v1();
    final message = ChatMessage(
      id: messageId,
      user: currentUser,
      text: text,
      isCurrentUser: true,
      createdAt: createdAt,
      isSameUserAsPrevious: previousMessage?.user.userId == currentUser.userId,
      isFirstMessageFromDay: !createdAt.isSameDayAs(previousMessage?.createdAt),
      isSending: true,
    );
    yield right(message);
    final result = await _messageFacade.sendMessage(
      message: message.toDomain(),
      roomId: roomId,
    );
    yield result.fold(
      (_) => left(message.copyWith(isSending: false, hasError: true)),
      (_) => right(message.copyWith(isSending: false)),
    );
  }

  Stream<Either<ChatMessage, ChatMessage>> resendMessage({
    required String roomId,
    required ChatMessage message,
  }) async* {
    final createdAt = DateTime.now();
    final newMessage = message.copyWith(
      isSending: true,
      createdAt: createdAt,
      hasError: false,
    );
    yield right(newMessage);
    final result = await _messageFacade.sendMessage(
      message: message.toDomain(),
      roomId: roomId,
    );
    yield result.fold(
      (_) => left(newMessage.copyWith(isSending: false, hasError: true)),
      (_) => right(newMessage.copyWith(isSending: false)),
    );
  }

  Stream<Either<EventChatFailure, Tuple2<ChatUser, List<ChatMessage>>>>
      joinToChat({
    required String roomId,
    int pageSize = 20,
  }) async* {
    final userResult = await _userAccountFacade.getUserAccount().first;
    if (userResult.isLeft()) {
      yield left(const EventChatFailure.unexpected());
      return;
    }
    final currentUser = ChatUser.fromDomain(
      userResult.getRightOrCrash(),
    );
    final participant = Participant(
      userId: currentUser.userId,
      username: currentUser.username,
      profilePictureUrl: currentUser.userPictureUrl,
    );
    final addParticipantResult = await _participantFacade.addParticipant(
      participant: participant,
      roomId: roomId,
    );
    if (addParticipantResult.isLeft()) {
      yield left(const EventChatFailure.unexpected());
      return;
    }
    yield* _messageFacade
        .listenToMessages(roomId: roomId, pageSize: pageSize)
        .map(
      (messagesResult) {
        return messagesResult.fold(
          (_) => left(const EventChatFailure.unexpected()),
          (messages) {
            final chatMessages = messages
                .map(
                  (msg) => ChatMessage.fromDomain(
                    message: msg,
                    currentUserId: currentUser.userId,
                    isFirstMessage: messages.first == msg,
                    isLastMessage: messages.last == msg,
                    nextMessage: messages.tryGet(messages.indexOf(msg) + 1),
                    previousMessage: messages.tryGet(messages.indexOf(msg) - 1),
                  ),
                )
                .toList();
            return right(Tuple2(currentUser, chatMessages));
          },
        );
      },
    );
  }

  Future<Either<EventChatFailure, List<ChatMessage>>> fetchNextPageMessages({
    required String currentUserId,
    required String roomId,
    int pageSize = 20,
    ChatMessage? lastMessage,
  }) async {
    final result = await _messageFacade.fetchMessages(
      roomId: roomId,
      pageSize: pageSize,
      lastMessage: lastMessage?.toDomain(),
    );
    return result.fold(
      (_) => left(const EventChatFailure.unexpected()),
      (messages) {
        final chatMessages = messages
            .map(
              (msg) => ChatMessage.fromDomain(
                message: msg,
                currentUserId: currentUserId,
                isFirstMessage: messages.first == msg,
                isLastMessage: messages.last == msg,
                nextMessage: messages.tryGet(messages.indexOf(msg) + 1),
                previousMessage: messages.tryGet(messages.indexOf(msg) - 1),
              ),
            )
            .toList();
        return right(chatMessages);
      },
    );
  }
}
