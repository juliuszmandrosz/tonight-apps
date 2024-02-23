import 'package:account_settings/account_settings.dart';
import 'package:clubs/domain/reviews/entities/review_entity.dart';
import 'package:clubs/domain/reviews/user_review_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:tonight/domain/event_review/event_review_form_failure.dart';
import 'package:tonight/domain/event_review/event_review_form_model.dart';

class EventReviewAggregator {
  final UserAccountFacade _accountFacade;
  final UserEventFacade _eventFacade;
  final UserReviewFacade _reviewFacade;

  EventReviewAggregator({
    required UserAccountFacade accountFacade,
    required UserEventFacade eventFacade,
    required UserReviewFacade reviewFacade,
  })  : _accountFacade = accountFacade,
        _eventFacade = eventFacade,
        _reviewFacade = reviewFacade;

  Future<Either<EventReviewFormFailure, EventReviewForm>> getEventReviewForm(
    String eventId,
  ) async {
    final userResult = await _accountFacade.getUserAccount().first;

    if (userResult.isLeft()) {
      return left(const EventReviewFormFailure.unexpected());
    }

    final eventResult = await _eventFacade.getEventById(eventId);

    if (eventResult.isLeft()) {
      return left(const EventReviewFormFailure.unexpected());
    }

    final user = userResult.getRightOrCrash();
    final event = eventResult.getRightOrCrash();

    final reviewResult = await _reviewFacade.getUserReviewFromEvent(
      clubId: event.clubId,
      eventId: event.id,
    );

    final review = reviewResult.fold((_) => null, (review) => review);

    final result = _mapEventReviewFromEntities(
      user: user,
      event: event,
      review: review,
    );

    return right(result);
  }

  Future<Either<EventReviewFormFailure, Unit>> submitReview(
    EventReviewForm eventReviewForm,
  ) async {
    final review = _mapEventReviewFormToReview(eventReviewForm);
    final result = await _reviewFacade.submitReview(
      clubId: eventReviewForm.clubId,
      review: review,
    );
    return result.fold(
      (_) => left(const EventReviewFormFailure.unexpected()),
      (_) => right(unit),
    );
  }

  _mapEventReviewFormToReview(EventReviewForm eventReviewForm) {
    return Review(
      userOpinion: eventReviewForm.reviewContent!,
      userRate: eventReviewForm.reviewValue!,
      username: eventReviewForm.username,
      userId: eventReviewForm.userId,
      eventId: eventReviewForm.eventId,
      eventName: eventReviewForm.eventName,
      userPictureUrl: eventReviewForm.userPictureUrl,
      collectiveIds: eventReviewForm.collectiveIds,
    );
  }

  _mapEventReviewFromEntities({
    required UserAccount user,
    required Event event,
    required Review? review,
  }) {
    return EventReviewForm(
      username: user.username,
      userId: user.id,
      eventName: event.eventName,
      clubId: event.clubId,
      eventEndDateTime: event.eventEndDateTime,
      eventStartDateTime: event.eventStartDateTime,
      reviewContent: review?.userOpinion,
      reviewValue: review?.userRate,
      eventId: event.id,
      userPictureUrl: user.profilePictureUrl,
      collectiveIds: event.collectiveIds,
    );
  }
}
