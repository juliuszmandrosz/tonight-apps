import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_entity.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_facade.dart';
import 'package:tonight/domain/challenge_stories/challenge_story_failure.dart';
import 'package:tonight/infrastructure/challenge_stories/dtos/challenge_story_dto.dart';
import 'package:tonight/infrastructure/rooms/dtos/room_dto.dart';

class FirebaseChallengeStoryFacade implements ChallengeStoryFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseStorage _storage;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseChallengeStoryFacade(
    this._firestore,
    this._auth,
    this._storage,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<ChallengeStoryFailure, Unit>> addStory(
    Uint8List file,
    ChallengeStory story,
  ) async {
    try {
      final storageRef =
          _storage.ref('challengeStories/${story.periodNumber}/${story.id}');
      final contentType = story.isVideo ? 'video/mp4' : 'image/jpeg';
      final metadata = SettableMetadata(contentType: contentType);
      final uploadTask = await storageRef.putData(file, metadata);
      final downloadUrl = await uploadTask.ref.getDownloadURL();
      story = story.copyWith(storyUrl: downloadUrl);
      try {
        await _firestore.runTransaction((tx) async {
          final storyRef = _firestore.challengeStories.doc(story.id);
          final roomRef = _firestore.rooms.doc(story.id);
          tx.set(storyRef, ChallengeStoryDto.fromDomain(story).toJson());
          tx.set(
              roomRef, const RoomDto(roomName: '', roomPhotoUrl: '').toJson());
        });
      } on FirebaseException catch (e) {
        await storageRef.delete();
        await _crashlytics.recordError(e, StackTrace.current);
        _logger.e(e);
        return left(const ChallengeStoryFailure.unexpected());
      }
      return right(unit);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ChallengeStoryFailure.unexpected());
    }
  }

  @override
  Future<Either<ChallengeStoryFailure, Unit>> deleteStory(
    String storyId,
    String storyUrl,
  ) async {
    try {
      await _storage.refFromURL(storyUrl).delete();
      await _firestore.challengeStories.doc(storyId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ChallengeStoryFailure.unexpected());
    }
  }

  @override
  Future<Either<ChallengeStoryFailure, List<ChallengeStory>>> getStories(
    int periodNumber,
  ) async {
    try {
      final stories = await _firestore.challengeStories
          .where('periodNumber', isEqualTo: periodNumber)
          .orderBy('createdAt', descending: true)
          .get();
      final result = stories.docs
          .map((doc) => ChallengeStoryDto.fromFirebase(doc).toDomain())
          .toList();
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ChallengeStoryFailure.unexpected());
    }
  }

  @override
  Future<Either<ChallengeStoryFailure, bool>> checkIfUserAlreadyAttended(
    String challengeId,
  ) async {
    try {
      final currentUserId = _auth.tryGetCurrentUserId();
      final stories = await _firestore.challengeStories
          .where('userId', isEqualTo: currentUserId)
          .where('challengeId', isEqualTo: challengeId)
          .get();
      return right(stories.docs.isNotEmpty);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const ChallengeStoryFailure.unexpected());
    }
  }
}
