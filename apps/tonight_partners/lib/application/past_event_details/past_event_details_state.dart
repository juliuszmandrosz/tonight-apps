part of 'past_event_details_cubit.dart';

@freezed
class PastEventDetailsState with _$PastEventDetailsState {
  const factory PastEventDetailsState({
    required CubitStatus status,
    required CubitStatus reviewReportStatus,
    required Option<Event> event,
    required Option<EventTickets> eventTickets,
    required Option<EventReview> eventReview,
    required List<Review> reviews,
    required bool hasReachedMax,
    required Option<String> errorMessage,
    required Option<String> reportingReviewId,
    required CubitStatus fetchNextPageStatus,
  }) = _PastEventDetailsState;

  factory PastEventDetailsState.initial() => PastEventDetailsState(
        status: CubitStatus.initial,
        reviewReportStatus: CubitStatus.initial,
        event: none(),
        eventTickets: none(),
        eventReview: none(),
        reviews: [],
        hasReachedMax: false,
        errorMessage: none(),
        reportingReviewId: none(),
        fetchNextPageStatus: CubitStatus.initial,
      );
}
