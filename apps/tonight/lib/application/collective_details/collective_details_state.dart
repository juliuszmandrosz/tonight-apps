part of 'collective_details_bloc.dart';

@freezed
class CollectiveDetailsState with _$CollectiveDetailsState {
  const factory CollectiveDetailsState({
    required CubitStatus getCollectiveStatus,
    required CubitStatus getEventsStatus,
    required CubitStatus getReviewsStatus,
    required CubitStatus getArtistsStatus,
    required CubitStatus getNextPageReviewsStatus,
    required List<Review> reviews,
    required List<Event> events,
    required List<Artist> artists,
    required bool hasReviewsReachedMax,
    required Option<String> snackbarMessage,
    required List<String> reportingReviewIds,
    required Option<Collective> collective,
  }) = _CollectiveDetailsState;

  factory CollectiveDetailsState.initial() => CollectiveDetailsState(
        getCollectiveStatus: CubitStatus.initial,
        getEventsStatus: CubitStatus.initial,
        getReviewsStatus: CubitStatus.initial,
        getArtistsStatus: CubitStatus.initial,
        getNextPageReviewsStatus: CubitStatus.initial,
        reviews: [],
        events: [],
        artists: [],
        hasReviewsReachedMax: false,
        snackbarMessage: none(),
        reportingReviewIds: [],
        collective: none(),
      );
}
