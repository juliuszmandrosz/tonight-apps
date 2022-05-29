part of 'club_reviews_bloc.dart';

@freezed
abstract class ClubReviewsState with _$ClubReviewsState {
  const ClubReviewsState._();

  const factory ClubReviewsState({
    required CubitStatus status,
    required CubitStatus reviewReportStatus,
    required String clubId,
    required List<Review> reviews,
    required bool hasReachedMax,
    required Option<String> errorMessage,
    required Option<String> reportingReviewId,
  }) = _ClubReviewsState;

  factory ClubReviewsState.initial() => ClubReviewsState(
        status: CubitStatus.initial,
        reviewReportStatus: CubitStatus.initial,
        clubId: '',
        reviews: [],
        hasReachedMax: false,
        errorMessage: none(),
        reportingReviewId: none(),
      );
}
