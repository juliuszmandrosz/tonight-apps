import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubs/domain/domain.dart';
import 'package:clubs/infrastructure/infrastructure.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger/logger.dart';

class FirebaseReviewFacade implements PartnerReviewFacade, UserReviewFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseCrashlytics _crashlytics;
  final Logger _logger;

  FirebaseReviewFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
    required FirebaseAuth firebaseAuth,
    required FirebaseCrashlytics crashlytics,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _crashlytics = crashlytics,
        _logger = logger;

  @override
  Future<Either<UserReviewFailure, List<Review>>> getClubReviewsAsUser(
    String clubId, {
    int pageSize = 20,
    Review? lastReview,
  }) async {
    final reviewsQuery = await _getClubReviewsQuery(
      clubId,
      pageSize: pageSize,
      lastReview: lastReview,
    );

    try {
      final result = await reviewsQuery.get();
      return right(result.docs
          .map((review) => ReviewDto.fromFirebase(review).toDomain())
          .toList());
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception fetching reviews as user EXCEPTION: $e',
          unexpectedFailure: const UserReviewFailure.unexpected(),
          permissionDeniedFailure: const UserReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<PartnerReviewFailure, List<Review>>> getClubReviewsAsPartner({
    int pageSize = 20,
    Review? lastReview,
  }) async {
    final clubId = _firebaseAuth.tryGetFirebaseUser().uid;
    final reviewsQuery = await _getClubReviewsQuery(
      clubId,
      pageSize: pageSize,
      lastReview: lastReview,
    );

    try {
      final result = await reviewsQuery.get();
      return right(result.docs
          .map((review) => ReviewDto.fromFirebase(review).toDomain())
          .toList());
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<PartnerReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception fetching reviews as partner EXCEPTION: $e',
          unexpectedFailure: const PartnerReviewFailure.unexpected(),
          permissionDeniedFailure:
              const PartnerReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserReviewFailure, Review>> getUserReviewFromEvent({
    required String eventId,
    required String clubId,
  }) async {
    final userId = _firestore.getCurrentUserDocRef(_firebaseAuth).id;
    final clubDocRef = _firestore.clubCollection.doc(clubId);
    final reviewRef = clubDocRef.reviewCollection
        .where('eventId', isEqualTo: eventId)
        .where('userId', isEqualTo: userId);
    try {
      final result = await reviewRef.get();

      if (result.size == 0) {
        return left(const UserReviewFailure.reviewNotFound());
      }

      return right(ReviewDto.fromFirebase(result.docs.first).toDomain());
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception fetching review EXCEPTION: $e',
          unexpectedFailure: const UserReviewFailure.unexpected(),
          permissionDeniedFailure: const UserReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserReviewFailure, String>> submitReview({
    required String clubId,
    required String ticketId,
    required Review review,
  }) async {
    final clubDocRef = _firestore.clubCollection.doc(clubId);
    final reviewRef = clubDocRef.reviewCollection;
    final reviewDto = ReviewDto.fromDomain(review);

    try {
      final reviewId = review.id;

      await reviewRef.doc(reviewId).set(reviewDto.toJson());

      final ticketCollection = _getCurrentUserTicketCollection();

      await ticketCollection.doc(ticketId).update({'reviewId': reviewId});

      return right(reviewId);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception adding review EXCEPTION: $e',
          unexpectedFailure: const UserReviewFailure.unexpected(),
          permissionDeniedFailure: const UserReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<PartnerReviewFailure, List<Review>>> getEventReviews(
    String eventId, {
    int pageSize = 20,
    Review? lastReview,
  }) async {
    final clubRef = await _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

    var reviewRef = clubRef.reviewCollection
        .where('eventId', isEqualTo: eventId)
        .orderBy('dateAdded', descending: true)
        .limit(pageSize);

    if (lastReview != null) {
      final lastDoc = await clubRef.reviewCollection.doc(lastReview.id).get();
      reviewRef = reviewRef.startAfterDocument(lastDoc);
    }

    try {
      final result = await reviewRef.get();

      return right(result.docs
          .map((review) => ReviewDto.fromFirebase(review).toDomain())
          .toList());
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<PartnerReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception fetching reviews by event id EXCEPTION: $e',
          unexpectedFailure: const PartnerReviewFailure.unexpected(),
          permissionDeniedFailure:
              const PartnerReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<PartnerReviewFailure, Unit>> reportReviewAsPartner(
    String reviewId,
  ) async {
    try {
      final partnerDoc =
          await _firestore.getCurrentPartnerDocRef(_firebaseAuth).get();

      final partnerId = partnerDoc.id;

      if (await _checkIfReportExists(partnerId, reviewId)) {
        return left(const PartnerReviewFailure.reportExists());
      }

      await _addReviewReport(reviewId, partnerId);

      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<PartnerReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message:
              'Firebase Exception reporting review as partner EXCEPTION: $e',
          unexpectedFailure: const PartnerReviewFailure.unexpected(),
          permissionDeniedFailure:
              const PartnerReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  @override
  Future<Either<UserReviewFailure, Unit>> reportReviewAsUser(
    String reviewId,
  ) async {
    try {
      final userDoc =
          await _firestore.getCurrentUserDocRef(_firebaseAuth).get();

      final userId = userDoc.id;

      if (await _checkIfReportExists(userId, reviewId)) {
        return left(const UserReviewFailure.reportExists());
      }

      await _addReviewReport(reviewId, userId);

      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        await handleFirebaseError<UserReviewFailure>(
          logger: _logger,
          crashlytics: _crashlytics,
          exception: e,
          message: 'Firebase Exception reporting review as user EXCEPTION: $e',
          unexpectedFailure: const UserReviewFailure.unexpected(),
          permissionDeniedFailure: const UserReviewFailure.permissionDenied(),
        ),
      );
    }
  }

  CollectionReference _getCurrentUserTicketCollection() {
    final currentUser = _firebaseAuth.tryGetFirebaseUser();

    return _firestore.userCollection.doc(currentUser.uid).ticketCollection;
  }

  Future<bool> _checkIfReportExists(String reporterId, String reviewId) async {
    final existingReportQuery = await _firestore.reviewReports
        .where('reporterId', isEqualTo: reporterId)
        .where('reviewId', isEqualTo: reviewId)
        .get();

    return existingReportQuery.size > 0;
  }

  Future<void> _addReviewReport(String reviewId, String reporterId) async {
    final reviewReport = ReviewReport(
      reviewId: reviewId,
      reporterId: reporterId,
      reportedAt: DateTime.now(),
    );

    final reviewReportDto = ReviewReportDto.fromDomain(reviewReport);

    await _firestore.reviewReports
        .doc(reviewReport.id)
        .set(reviewReportDto.toJson());
  }

  Future<Query> _getClubReviewsQuery(
    String clubId, {
    int pageSize = 20,
    Review? lastReview,
  }) async {
    final clubRef = _firestore.clubCollection.doc(clubId);

    var reviewRef = clubRef.reviewCollection
        .orderBy('dateAdded', descending: true)
        .limit(pageSize);

    if (lastReview != null) {
      final lastDoc = await clubRef.reviewCollection.doc(lastReview.id).get();
      reviewRef = reviewRef.startAfterDocument(lastDoc);
    }
    return reviewRef;
  }
}
