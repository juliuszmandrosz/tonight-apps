import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/rooms/room_entity.dart';
import 'package:tonight/domain/rooms/room_facade.dart';
import 'package:tonight/domain/rooms/room_failure.dart';
import 'package:tonight/infrastructure/rooms/dtos/room_dto.dart';

class FirebaseRoomFacade implements RoomFacade {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseRoomFacade(
    this._auth,
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<RoomFailure, List<Room>>> getUserRooms({
    int pageSize = 20,
    String? lastRoomId,
  }) async {
    try {
      final currentUserId = _auth.tryGetFirebaseUser().uid;

      var query = _firestore.rooms
          .where('participantIds', arrayContains: currentUserId)
          .orderBy('lastMessageCreatedAt', descending: true)
          .limit(pageSize);

      if (lastRoomId != null) {
        final lastRoomDoc = await _firestore.rooms.doc(lastRoomId).get();
        query = query.startAfterDocument(lastRoomDoc);
      }

      final snapshot = await query.get();

      return right<RoomFailure, List<Room>>(
        snapshot.docs
            .map((doc) => RoomDto.fromFirebase(doc).toDomain())
            .toList(),
      );
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const RoomFailure.unexpected());
    }
  }
}
