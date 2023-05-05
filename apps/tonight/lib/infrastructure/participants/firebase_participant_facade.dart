import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/domain/participants/participant_facade.dart';
import 'package:tonight/domain/participants/participant_failure.dart';
import 'package:tonight/infrastructure/messages/dto/message_dto.dart';
import 'package:tonight/infrastructure/participants/dtos/participant_dto.dart';
import 'package:uuid/uuid.dart';

class FirebaseParticipantFacade implements ParticipantFacade {
  final FirebaseFirestore _firestore;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseParticipantFacade(
    this._firestore,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<ParticipantFailure, Unit>> addParticipant({
    required Participant participant,
    required String roomId,
  }) async {
    try {
      await _firestore.runTransaction((tx) async {
        final participantRef =
            _firestore.rooms.doc(roomId).participants.doc(participant.userId);

        final existingParticipant = await tx.get(participantRef);

        if (existingParticipant.exists) return;

        final messageId = const Uuid().v1();
        final messageDto = MessageDto(
          id: messageId,
          userId: participant.userId,
          username: participant.username,
          userPictureUrl: participant.profilePictureUrl,
          text: 'joined',
          createdAt: DateTime.now(),
          isJoinedInfo: true,
        );
        final participantDto = ParticipantDto.fromDomain(participant);

        final messageRef = _firestore.rooms.doc(roomId).messages.doc(messageId);

        tx.set(participantRef, participantDto.toJson());
        tx.set(messageRef, messageDto.toJson());
      });
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const ParticipantFailure.unexpected());
    }
  }

  @override
  Future<Either<ParticipantFailure, List<Participant>>> fetchParticipants({
    required String eventId,
    int pageSize = 20,
    Participant? lastParticipant,
  }) async {
    try {
      var participantsRef = _firestore.rooms
          .doc(eventId)
          .participants
          .orderBy('username')
          .limit(pageSize);

      if (lastParticipant != null) {
        final lastDoc = await _firestore.rooms
            .doc(eventId)
            .participants
            .doc(lastParticipant.userId)
            .get();
        participantsRef = participantsRef.startAfterDocument(lastDoc);
      }

      final participantsSnapshot = await participantsRef.get();

      final participants = participantsSnapshot.docs
          .map((doc) => ParticipantDto.fromFirebase(doc).toDomain())
          .toList();

      return right(participants);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const ParticipantFailure.unexpected());
    }
  }

  @override
  Future<Either<ParticipantFailure, Unit>> removeParticipant({
    required String roomId,
    required Participant participant,
  }) async {
    try {
      await _firestore.runTransaction((tx) async {
        final participantRef =
            _firestore.rooms.doc(roomId).participants.doc(participant.userId);

        final existingParticipant = await tx.get(participantRef);

        if (!existingParticipant.exists) return;

        final messageId = const Uuid().v1();
        final messageDto = MessageDto(
          id: messageId,
          userId: participant.userId,
          username: participant.username,
          userPictureUrl: participant.profilePictureUrl,
          text: 'left',
          createdAt: DateTime.now(),
          isLeftInfo: true,
        );

        final messageRef = _firestore.rooms.doc(roomId).messages.doc(messageId);

        tx.delete(participantRef);
        tx.set(messageRef, messageDto.toJson());
      });
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const ParticipantFailure.unexpected());
    }
  }

  @override
  Future<Either<ParticipantFailure, Tuple2<List<Participant>, int>>>
      fetchFirstParticipantsAndTotalCount({
    required String eventId,
    int participantsLimit = 4,
  }) async {
    try {
      final participantsRef = _firestore.rooms.doc(eventId).participants;

      final participantsSnapshot =
          await participantsRef.limit(participantsLimit).get();

      final participants = participantsSnapshot.docs
          .map((doc) => ParticipantDto.fromFirebase(doc).toDomain())
          .toList();

      final totalParticipants = await participantsRef.count().get();

      return right(Tuple2(participants, totalParticipants.count));
    } on FirebaseException catch (e) {
      _logger.e(e);
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const ParticipantFailure.unexpected());
    }
  }
}
