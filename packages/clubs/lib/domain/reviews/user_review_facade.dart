import 'package:dartz/dartz.dart';
import 'package:clubs/domain/reviews/entities/review_entity.dart';

import 'failures/user_review_failure.dart';

abstract class UserReviewFacade {
  Future<Either<UserReviewFailure, String>> submitReview({
    required String clubId,
    required String ticketId,
    required Review review,
  });

  Future<Either<UserReviewFailure, Review>> getReview(
    String reviewId,
    String clubId,
  );

  Future<Either<UserReviewFailure, List<Review>>> getClubReviewsAsUser(
    String clubId, {
    int pageSize = 20,
    Review? lastReview,
  });

  Future<Either<UserReviewFailure, Unit>> reportReviewAsUser(
    String reviewId,
  );
}
