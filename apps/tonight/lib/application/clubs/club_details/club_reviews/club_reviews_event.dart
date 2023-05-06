part of 'club_reviews_bloc.dart';

@freezed
class ClubReviewsEvent with _$ClubReviewsEvent {
  const factory ClubReviewsEvent.reviewsFetched(String clubId) =
      _ReviewsFetched;

  const factory ClubReviewsEvent.nextPageReviewsFetched() =
      _NextPageReviewsFetched;

  const factory ClubReviewsEvent.reviewReported(Review review) =
      _ReviewReported;
}
