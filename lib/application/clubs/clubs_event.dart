part of 'clubs_bloc.dart';

@freezed
abstract class ClubsEvent with _$ClubsEvent {
  const factory ClubsEvent.onClubPageOpened()=OnClubPageOpened;
  const factory ClubsEvent.clubsReceived(Either<ClubFailure,List<Club>> failureOrClubs)=ClubsReceived;

}
