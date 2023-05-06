part of 'club_reviews_bloc.dart';

@freezed
abstract class ClubReviewsState with _$ClubReviewsState {
  const ClubReviewsState._();

  const factory ClubReviewsState({
    required CubitStatus getReviewsStatus,
    required CubitStatus nextPageReviewsStatus,
    required String clubId,
    required List<Review> reviews,
    required bool hasReachedMax,
    required Option<String> snackbarMessage,
    required List<String> reportingReviewIds,
  }) = _ClubReviewsState;

  factory ClubReviewsState.initial() => ClubReviewsState(
        getReviewsStatus: CubitStatus.initial,
        nextPageReviewsStatus: CubitStatus.initial,
        clubId: '',
        reviews: [],
        hasReachedMax: false,
        snackbarMessage: none(),
        reportingReviewIds: [],
      );
}
