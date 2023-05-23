import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/messages/message_entity.dart';
import 'package:tonight/domain/messages/message_facade.dart';
import 'package:tonight/domain/messages/message_failure.dart';
import 'package:tonight/infrastructure/messages/dto/message_dto.dart';
import 'package:tonight/infrastructure/messages/dto/message_report_dto.dart';
import 'package:uuid/uuid.dart';

class FirebaseMessageFacade implements MessageFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseMessageFacade(
    this._firestore,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Stream<Either<MessageFailure, List<Message>>> listenToMessages({
    required String roomId,
    int pageSize = 20,
  }) async* {
    final messagesRef = _firestore.rooms
        .doc(roomId)
        .messages
        .orderBy('createdAt', descending: true)
        .limit(pageSize);

    yield* messagesRef.snapshots().map(
      (snapshot) {
        return right<MessageFailure, List<Message>>(
          snapshot.docs
              .map((doc) => MessageDto.fromFirebase(doc).toDomain())
              .toList(),
        );
      },
    ).handleError((e) async {
      if (e is FirebaseException) {
        _logger.e(e);
        await _crashlytics.recordError(e, StackTrace.current);
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
      await _firestore.runTransaction((tx) async {
        final messageRef =
            _firestore.rooms.doc(roomId).messages.doc(message.id);
        final roomRef = _firestore.rooms.doc(roomId);
        final messageDto = MessageDto.fromDomain(message);
        tx.set(messageRef, messageDto.toJson());
        tx.set(
          roomRef,
          {
            'lastMessageId': message.id,
            'lastMessageText': message.text,
            'lastMessageUsername': message.username,
            'lastMessageCreatedAt': Timestamp.fromDate(message.createdAt),
            'isLastMessageJoinedInfo': false,
            'isLastMessageLeftInfo': false,
            'participantReadStatuses.${message.userId}': true,
          },
          SetOptions(merge: true),
        );
      });
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
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
      var messagesRef = _firestore.rooms
          .doc(roomId)
          .messages
          .orderBy('createdAt', descending: true)
          .limit(pageSize);

      if (lastMessage != null) {
        final lastDoc = await _firestore.rooms
            .doc(roomId)
            .messages
            .doc(lastMessage.id)
            .get();
        messagesRef = messagesRef.startAfterDocument(lastDoc);
      }

      final snapshot = await messagesRef.get();

      return right<MessageFailure, List<Message>>(
        snapshot.docs
            .map((doc) => MessageDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const MessageFailure.unexpected());
    }
  }

  @override
  Future<Either<MessageFailure, Unit>> reportMessage({
    required String roomId,
    required Message message,
  }) async {
    try {
      final currentUserId = _auth.tryGetFirebaseUser().uid;

      final reportDto = MessageReportDto(
        reporterId: currentUserId,
        createdAt: DateTime.now(),
        messageId: message.id,
        messageContent: message.text,
        roomId: roomId,
      );

      if (await _checkIfReportExists(reportDto)) {
        return left(const MessageFailure.reportExists());
      }

      final reportId = const Uuid().v1();

      await _firestore.messageReports.doc(reportId).set(reportDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const MessageFailure.unexpected());
    }
  }

  Future<bool> _checkIfReportExists(MessageReportDto messageReportDto) async {
    final existingReportQuery = await _firestore.messageReports
        .where('reporterId', isEqualTo: messageReportDto.reporterId)
        .where('messageId', isEqualTo: messageReportDto.messageId)
        .count()
        .get();

    return existingReportQuery.count > 0;
  }
}
