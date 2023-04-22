part of 'select_club_bloc.dart';

@freezed
class SelectClubEvent with _$SelectClubEvent {
  const factory SelectClubEvent.clubsFetched() = _ClubsFetched;

  const factory SelectClubEvent.nextPageClubsFetched() = _NextPageClubsFetched;

  const factory SelectClubEvent.clubSelected(Club club) = _ClubSelected;

  const factory SelectClubEvent.clubsFiltered(String phrase) = _ClubsFiltered;
}
