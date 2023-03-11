part of 'club_details_cubit.dart';

@freezed
abstract class ClubDetailsState with _$ClubDetailsState {
  const ClubDetailsState._();

  const factory ClubDetailsState.initial() = _Initial;

  const factory ClubDetailsState.loadInProgress() = _LoadInProgress;

  const factory ClubDetailsState.loadSuccess(Club club) = _LoadSuccess;

  const factory ClubDetailsState.loadFailure(UserClubFailure clubFailure) =
      _LoadFailure;
}
