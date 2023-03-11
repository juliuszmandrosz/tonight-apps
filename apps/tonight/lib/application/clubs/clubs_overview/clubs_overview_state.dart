part of 'clubs_overview_bloc.dart';

@freezed
abstract class ClubsOverviewState with _$ClubsOverviewState {
  const ClubsOverviewState._();

  const factory ClubsOverviewState({
    required CubitStatus status,
    required List<Club> clubs,
    required bool hasReachedMax,
    required ClubFilters clubFilter,
    required Option<CommonClubFailure> failure,
  }) = _ClubsOverviewState;

  factory ClubsOverviewState.initial() => ClubsOverviewState(
        status: CubitStatus.initial,
        clubs: [],
        hasReachedMax: false,
        clubFilter: ClubFilters.empty(),
        failure: none(),
      );
}
