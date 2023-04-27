import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/messages/message_entity.dart';
import 'package:tonight/domain/messages/message_facade.dart';
import 'package:tonight/domain/messages/message_failure.dart';
import 'package:tonight/infrastructure/messages/dto/message_dto.dart';

class FirebaseMessageFacade implements MessageFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseMessageFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Stream<Either<MessageFailure, List<Message>>> listenToMessages({
    required String roomId,
    int pageSize = 20,
  }) async* {
    final messagesRef = _firestore.messages
        .where('roomId', isEqualTo: roomId)
        .orderBy('createdAt', descending: true)
        .limit(pageSize);

    yield* messagesRef
        .snapshots()
        .map(
          (snapshot) => right<MessageFailure, List<Message>>(
            snapshot.docs
                .map((doc) => MessageDto.fromFirebase(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException) {
        _logger.e(e);
        _crashlytics.recordError(e, StackTrace.current);
        return left(const MessageFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<MessageFailure, Unit>> sendMessage({
    required Message message,
    required String roomId,
  }) async {
    try {
      final messageDto = MessageDto.fromDomain(message);
      await _firestore.messages.doc(message.id).set(messageDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      _crashlytics.recordError(e, StackTrace.current);
      return left(const MessageFailure.unexpected());
    }
  }

  @override
  Future<Either<MessageFailure, List<Message>>> fetchMessages({
    required String roomId,
    int pageSize = 20,
    Message? lastMessage,
  }) async {
    try {
      var messagesRef = _firestore.messages
          .where('roomId', isEqualTo: roomId)
          .orderBy('createdAt', descending: true)
          .limit(pageSize);

      if (lastMessage != null) {
        messagesRef = messagesRef.startAfter([lastMessage.createdAt]);
      }

      final snapshot = await messagesRef.get();

      return right<MessageFailure, List<Message>>(
        snapshot.docs
            .map((doc) => MessageDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e(e);
      _crashlytics.recordError(e, StackTrace.current);
      return left(const MessageFailure.unexpected());
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> joinToChat({
    required String roomId,
    required String userId,
    required String username,
  }) async {
    try {
      final userJoinedMessages = await _firestore.messages
          .where('roomId', isEqualTo: roomId)
          .where('userId', isEqualTo: userId)
          .where('isJoinedInfo', isEqualTo: true)
          .count()
          .get();
      if (userJoinedMessages.count > 0) {
        // User already joined this room before
        return right(unit);
      }
      final messageDto = MessageDto(
        userId: userId,
        username: username,
        text: 'joined',
        roomId: roomId,
        isJoinedInfo: true,
        createdAt: DateTime.now(),
      );
      await _firestore.messages.add(messageDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      _crashlytics.recordError(e, StackTrace.current);
      return left(const MessageFailure.unexpected());
    }
  }
}
