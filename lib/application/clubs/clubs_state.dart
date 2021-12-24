part of 'clubs_bloc.dart';

@freezed
abstract class ClubsState with _$ClubsState{
  const factory ClubsState.initial()=_Initial;
  const factory ClubsState.loadInProgress()=_LoadInProgress;
  const factory ClubsState.loadSuccess(List<Club> clubs)=_LoadSuccess;
  const factory ClubsState.loadFailure(ClubFailure clubFailure)=_LoadFailure;
}

