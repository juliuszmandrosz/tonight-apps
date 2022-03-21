part of 'club_reviews_bloc.dart';

@freezed
abstract class ClubReviewsState with _$ClubReviewsState {
  const ClubReviewsState._();

  const factory ClubReviewsState({
    required CubitStatus status,
    required String clubId,
    required List<Review> reviews,
    required bool hasReachedMax,
  }) = _ClubReviewsState;

  factory ClubReviewsState.initial() => const ClubReviewsState(
        status: CubitStatus.initial,
        clubId: '',
        reviews: [],
        hasReachedMax: false,
      );
}
