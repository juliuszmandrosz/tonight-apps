part of 'clubs_overview_bloc.dart';

@freezed
abstract class ClubsOverviewState with _$ClubsOverviewState {
  const ClubsOverviewState._();

  const factory ClubsOverviewState({
    required CubitStatus status,
    required List<Club> clubs,
    required bool hasReachedMax,
    required ClubFilter clubFilter,
  }) = _ClubsOverviewState;

  factory ClubsOverviewState.initial() => ClubsOverviewState(
        status: CubitStatus.initial,
        clubs: [],
        hasReachedMax: false,
        clubFilter: ClubFilter.empty(),
      );
}
