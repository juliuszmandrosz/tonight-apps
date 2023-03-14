import 'package:dartz/dartz.dart';
import 'package:events/domain/event_review/event_review_entity.dart';
import 'package:events/domain/event_review/event_review_failure.dart';
import 'package:events/domain/events/event_entity.dart';

mixin GetEventReviewMixin {
  Future<Either<EventReviewFailure, EventReview>> getEventReview(Event event);
}
