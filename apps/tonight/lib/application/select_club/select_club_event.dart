part of 'select_club_bloc.dart';

@freezed
class SelectClubEvent with _$SelectClubEvent {
  const factory SelectClubEvent.venuesFetched() = _VenuesFetched;

  const factory SelectClubEvent.nextPageVenuesFetched() =
      _NextPageVenuesFetched;

  const factory SelectClubEvent.venueSelected(WallPhotoVenue venue) =
      _VenueSelected;

  const factory SelectClubEvent.venuesFiltered(String phrase) = _VenuesFiltered;
}
