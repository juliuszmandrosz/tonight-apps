part of 'past_event_details_cubit.dart';

@freezed
class PastEventDetailsState with _$PastEventDetailsState {
  const factory PastEventDetailsState({
    required CubitStatus status,
    required Option<Event> event,
    required Option<EventTickets> eventTickets,
    required Option<EventReview> eventReview,
    required List<Review> reviews,
    required bool hasReachedMax,
  }) = _PastEventDetailsState;

  factory PastEventDetailsState.initial() => PastEventDetailsState(
        status: CubitStatus.initial,
        event: none(),
        eventTickets: none(),
        eventReview: none(),
        reviews: [],
        hasReachedMax: false,
      );
}
