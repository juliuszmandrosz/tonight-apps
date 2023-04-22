part of 'club_reviews_bloc.dart';

@freezed
abstract class ClubReviewsState with _$ClubReviewsState {
  const ClubReviewsState._();

  const factory ClubReviewsState({
    required CubitStatus getReviewsStatus,
    required CubitStatus nextPageReviewsStatus,
    required CubitStatus reviewReportStatus,
    required String clubId,
    required List<Review> reviews,
    required bool hasReachedMax,
    required Option<String> snackbarMessage,
    required Option<String> reportingReviewId,
  }) = _ClubReviewsState;

  factory ClubReviewsState.initial() => ClubReviewsState(
        getReviewsStatus: CubitStatus.initial,
        nextPageReviewsStatus: CubitStatus.initial,
        reviewReportStatus: CubitStatus.initial,
        clubId: '',
        reviews: [],
        hasReachedMax: false,
        snackbarMessage: none(),
        reportingReviewId: none(),
      );
}
