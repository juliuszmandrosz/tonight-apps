import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/firebase_auth_extensions.dart';
import 'package:common/infrastructure/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/last_read_messages/last_read_message_facade.dart';
import 'package:tonight/domain/last_read_messages/last_read_message_failure.dart';

class FirebaseLastReadMessageFacade implements LastReadMessageFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseLastReadMessageFacade(
    this._firestore,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Stream<Either<LastReadMessageFailure, String?>>
      listenToLastReadMessageIdFromRoom(
    String roomId,
  ) async* {
    final currentUserId = _auth.tryGetFirebaseUser().uid;
    final lastReadMessageRef =
        _firestore.lastReadMessages.doc(roomId).users.doc(currentUserId);

    yield* lastReadMessageRef.snapshots().map(
      (snapshot) {
        if (!snapshot.exists) {
          return right<LastReadMessageFailure, String?>(null);
        }

        final lastReadMessageId = snapshot['lastReadMessageId'] as String?;

        return right<LastReadMessageFailure, String?>(lastReadMessageId);
      },
    ).handleError((e) async {
      if (e is FirebaseException) {
        _logger.e(e);
        await _crashlytics.recordError(e, StackTrace.current);
        return left(const LastReadMessageFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<LastReadMessageFailure, Unit>> updateLastReadMessageId({
    required String roomId,
    required String messageId,
  }) async {
    try {
      final currentUserId = _auth.tryGetFirebaseUser().uid;
      await _firestore.lastReadMessages
          .doc(roomId)
          .users
          .doc(currentUserId)
          .set(
        {'lastReadMessageId': messageId},
        SetOptions(merge: true),
      );
      return right(unit);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const LastReadMessageFailure.unexpected());
    }
  }
}
