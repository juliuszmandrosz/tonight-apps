import 'package:dartz/dartz.dart';
import 'package:raver_clubs/domain/reviews/review_entity.dart';

import 'failures/partner_review_failure.dart';

abstract class PartnerReviewFacade {
  Future<Either<PartnerReviewFailure, List<Review>>> getEventReviews(String eventId,
      {int pageSize = 20, Review? lastReview});

  Future<Either<PartnerReviewFailure, List<Review>>> getClubReviewsAsPartner(
      {int pageSize = 20, Review? lastReview});
}
