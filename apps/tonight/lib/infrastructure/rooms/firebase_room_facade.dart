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
  Stream<Either<RoomFailure, List<Room>>> listenToUserRooms() async* {
    final currentUserId = _auth.tryGetFirebaseUser().uid;

    final roomsRef = _firestore.rooms
        .where('participantIds', arrayContains: currentUserId)
        .orderBy('lastMessageCreatedAt', descending: true);

    yield* roomsRef.snapshots().map(
      (snapshot) {
        return right<RoomFailure, List<Room>>(
          snapshot.docs
              .map((doc) => RoomDto.fromFirebase(doc).toDomain())
              .toList(),
        );
      },
    ).handleError((e) async {
      if (e is FirebaseException) {
        return left(
          handleFirebaseError<RoomFailure>(
            logger: _logger,
            crashlytics: _crashlytics,
            exception: e,
            message: '$e',
            unexpectedFailure: const RoomFailure.unexpected(),
            permissionDeniedFailure: const RoomFailure.permissionDenied(),
          ),
        );
      }
    });
  }
}
