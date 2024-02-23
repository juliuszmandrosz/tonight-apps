part of 'collective_details_bloc.dart';

@freezed
class CollectiveDetailsEvent with _$CollectiveDetailsEvent {
  const factory CollectiveDetailsEvent.eventsFetched(String collectiveId) =
      _EventsFetched;

  const factory CollectiveDetailsEvent.collectiveInitialized({
    String? collectiveId,
    Collective? collective,
  }) = _CollectiveInitialized;

  const factory CollectiveDetailsEvent.reviewsFetched(String collectiveId) =
      _ReviewsFetched;

  const factory CollectiveDetailsEvent.nextPageReviewsFetched(
      String collectiveId) = _NextPageReviewsFetched;

  const factory CollectiveDetailsEvent.artistsFetched(String collectiveId) =
      _ArtistsFetched;

  const factory CollectiveDetailsEvent.reviewReported(Review review) =
      _ReviewReported;
}
