import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/story_interactions/story_interactions_entity.dart';
import 'package:tonight/domain/story_interactions/story_interactions_facade.dart';
import 'package:tonight/domain/story_interactions/story_interactions_failure.dart';
import 'package:tonight/infrastructure/story_interactions/dtos/story_interactions_dto.dart';

class FirebaseStoryInteractionsFacade implements StoryInteractionsFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseStoryInteractionsFacade(
    this._firestore,
    this._auth,
    this._crashlytics,
    this._logger,
  );

  @override
  Future<Either<StoryInteractionsFailure, List<StoryInteractions>>>
      getUserInteractions(int periodNumber) async {
    try {
      final currentUserId = _auth.tryGetCurrentUserId();
      final interactions = await _firestore.storyInteractions
          .where('userId', isEqualTo: currentUserId)
          .where('periodNumber', isEqualTo: periodNumber)
          .get();
      final result = interactions.docs
          .map((doc) => StoryInteractionsDto.fromFirebase(doc).toDomain())
          .toList();
      return right(result);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const StoryInteractionsFailure.unexpected());
    }
  }

  @override
  Future<Either<StoryInteractionsFailure, Unit>> likeStory({
    required String interactionId,
    required String storyId,
  }) async {
    try {
      await _firestore.runTransaction((tx) async {
        final interactionRef = _firestore.storyInteractions.doc(interactionId);
        final storyRef = _firestore.challengeStories.doc(storyId);

        tx.set(interactionRef, {'liked': true}, SetOptions(merge: true));
        tx.update(storyRef, {'likesCount': FieldValue.increment(1)});
      });

      return right(unit);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const StoryInteractionsFailure.unexpected());
    }
  }

  @override
  Future<Either<StoryInteractionsFailure, Unit>> unlikeStory({
    required String interactionId,
    required String storyId,
  }) async {
    try {
      await _firestore.runTransaction((tx) async {
        final interactionRef = _firestore.storyInteractions.doc(interactionId);
        final storyRef = _firestore.challengeStories.doc(storyId);

        tx.set(interactionRef, {'liked': false}, SetOptions(merge: true));
        tx.update(storyRef, {'likesCount': FieldValue.increment(-1)});
      });
      return right(unit);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const StoryInteractionsFailure.unexpected());
    }
  }

  @override
  Future<Either<StoryInteractionsFailure, Unit>> markStoryAsSeen({
    required storyId,
    required String interactionId,
    required int periodNumber,
  }) async {
    try {
      final currentUserId = _auth.tryGetCurrentUserId();
      await _firestore.storyInteractions.doc(interactionId).set(
        {
          'userId': currentUserId,
          'periodNumber': periodNumber,
          'seen': true,
          'seenAt': Timestamp.now(),
          'storyId': storyId,
        },
        SetOptions(merge: true),
      );
      return right(unit);
    } on FirebaseException catch (e) {
      await _crashlytics.recordError(e, StackTrace.current);
      _logger.e(e);
      return left(const StoryInteractionsFailure.unexpected());
    }
  }
}
