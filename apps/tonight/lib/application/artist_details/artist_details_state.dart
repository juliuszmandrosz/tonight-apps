part of 'artist_details_cubit.dart';

@freezed
class ArtistDetailsState with _$ArtistDetailsState {
  const factory ArtistDetailsState({
    required CubitStatus getEventsStatus,
    required CubitStatus getCollectivesStatus,
    required List<Event> events,
    required List<Collective> collectives,
  }) = _ArtistDetailsState;

  factory ArtistDetailsState.initial() => const ArtistDetailsState(
        getEventsStatus: CubitStatus.initial,
        getCollectivesStatus: CubitStatus.initial,
        events: [],
        collectives: [],
      );
}
