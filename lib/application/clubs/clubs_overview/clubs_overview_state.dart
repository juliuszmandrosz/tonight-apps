part of 'clubs_overview_cubit.dart';

@freezed
abstract class ClubsOverviewState with _$ClubsOverviewState {
  const factory ClubsOverviewState.initial() = _Initial;

  const factory ClubsOverviewState.loadInProgress() = _LoadInProgress;

  const factory ClubsOverviewState.loadSuccess(List<ClubOverview> clubs) =
      _LoadSuccess;

  const factory ClubsOverviewState.loadFailure(ClubFailure clubFailure) =
      _LoadFailure;
}
