import 'package:clubs/domain/reviews/entities/review_entity.dart';
import 'package:dartz/dartz.dart';

import 'failures/user_review_failure.dart';

abstract class UserReviewFacade {
  Future<Either<UserReviewFailure, String>> submitReview({
    required String clubId,
    required Review review,
  });

  Future<Either<UserReviewFailure, Review>> getUserReviewFromEvent({
    required String eventId,
    required String clubId,
  });

  Future<Either<UserReviewFailure, List<Review>>> getClubReviewsAsUser(
    String clubId, {
    int pageSize = 20,
    Review? lastReview,
  });

  Future<Either<UserReviewFailure, Unit>> reportReviewAsUser(
    String reviewId,
  );
}
