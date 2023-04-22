part of 'clubs_bloc.dart';

@freezed
class ClubsState with _$ClubsState {
  const factory ClubsState({
    required CubitStatus getClubsStatus,
    required CubitStatus nextPageStatus,
    required Option<String> errorMessage,
    required List<Club> clubs,
    required bool hasReachedMax,
    required ClubFilters clubFilters,
  }) = _ClubsState;

  factory ClubsState.initial() => ClubsState(
        getClubsStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        errorMessage: none(),
        hasReachedMax: false,
        clubFilters: ClubFilters.empty(),
        clubs: [],
      );
}
