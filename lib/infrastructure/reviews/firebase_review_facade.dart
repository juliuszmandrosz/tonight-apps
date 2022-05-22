import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:raver_clubs/domain/reviews/failures/partner_review_failure.dart';
import 'package:raver_clubs/domain/reviews/failures/user_review_failure.dart';
import 'package:raver_clubs/domain/reviews/partner_review_facade.dart';
import 'package:raver_clubs/domain/reviews/review_entity.dart';
import 'package:raver_clubs/domain/reviews/user_review_facade.dart';
import 'package:raver_common/raver_common.dart';

import 'review_dto.dart';

class FirebaseReviewFacade implements PartnerReviewFacade, UserReviewFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final Logger _logger;

  FirebaseReviewFacade({
    required FirebaseFirestore firestore,
    required Logger logger,
    required FirebaseAuth firebaseAuth,
  })  : _firestore = firestore,
        _firebaseAuth = firebaseAuth,
        _logger = logger;

  @override
  Future<Either<UserReviewFailure, List<Review>>> getClubReviewsAsUser(
      String clubId,
      {int pageSize = 20,
      Review? lastReview}) async {
    final reviewsQuery = _getClubReviewsQuery(clubId,
        pageSize: pageSize, lastReview: lastReview);
    try {
      final result = await reviewsQuery.get();

      return right(result.docs
          .map((review) => ReviewDto.fromFirebase(review).toDomain())
          .toList());
    } on FirebaseException catch (e) {
      _logger.e("Exception during fetching reviews as user EXCEPTION: $e");
      return left(const UserReviewFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerReviewFailure, List<Review>>> getClubReviewsAsPartner(
      {int pageSize = 20, Review? lastReview}) async {
    final clubId = _firebaseAuth.tryGetFirebaseUser().uid;
    final reviewsQuery = _getClubReviewsQuery(clubId,
        pageSize: pageSize, lastReview: lastReview);
    try {
      final result = await reviewsQuery.get();

      return right(result.docs
          .map((review) => ReviewDto.fromFirebase(review).toDomain())
          .toList());
    } on FirebaseException catch (e) {
      _logger.e("Exception during fetching reviews as partner EXCEPTION: $e");
      return left(const PartnerReviewFailure.unexpected());
    }
  }

  @override
  Future<Either<UserReviewFailure, Review>> getReview(
      String reviewId, String clubId) async {
    final clubDocRef = _firestore.clubCollection.doc(clubId);

    final reviewRef = clubDocRef.reviewCollection.doc(reviewId);

    try {
      final result = await reviewRef.get();

      if (result.data() == null) throw InvalidIdError();

      return right(ReviewDto.fromFirebase(result).toDomain());
    } on FirebaseException catch (e) {
      _logger.e("Exception during fetching review EXCEPTION: $e");
      return left(const UserReviewFailure.unexpected());
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
      _logger.e("Exception during adding review EXCEPTION: $e");
      return left(const UserReviewFailure.unexpected());
    }
  }

  @override
  Future<Either<PartnerReviewFailure, List<Review>>> getEventReviews(
      String eventId,
      {int pageSize = 20,
      Review? lastReview}) async {
    final clubRef = _firestore.getCurrentPartnerClubDocRef(_firebaseAuth);

    var reviewRef = clubRef.reviewCollection
        .where('eventId', isEqualTo: eventId)
        .orderBy('dateAdded', descending: true)
        .limit(pageSize);

    if (lastReview != null) {
      reviewRef =
          reviewRef.startAfter([Timestamp.fromDate(lastReview.dateAdded)]);
    }

    try {
      final result = await reviewRef.get();

      return right(result.docs
          .map((review) => ReviewDto.fromFirebase(review).toDomain())
          .toList());
    } on FirebaseException catch (e) {
      _logger.e("Exception during fetching reviews by event id EXCEPTION: $e");
      return left(const PartnerReviewFailure.unexpected());
    }
  }

  CollectionReference _getCurrentUserTicketCollection() {
    final currentUser = _firebaseAuth.tryGetFirebaseUser();

    return _firestore.userCollection.doc(currentUser.uid).ticketCollection;
  }

  Query _getClubReviewsQuery(String clubId,
      {int pageSize = 20, Review? lastReview}) {
    final clubDocRef = _firestore.clubCollection.doc(clubId);
    var reviewRef = clubDocRef.reviewCollection
        .orderBy('dateAdded', descending: true)
        .limit(pageSize);

    if (lastReview != null) {
      reviewRef =
          reviewRef.startAfter([Timestamp.fromDate(lastReview.dateAdded)]);
    }
    return reviewRef;
  }
}
