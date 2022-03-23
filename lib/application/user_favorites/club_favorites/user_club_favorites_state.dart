part of 'user_club_favorites_cubit.dart';

@freezed
abstract class UserClubFavoritesState with _$UserClubFavoritesState {
  const UserClubFavoritesState._();

  factory UserClubFavoritesState({
    required List<Club> clubs,
    required CubitStatus status,
    required int currentVisibleIndex,
  }) = _UserClubFavoritesState;

  factory UserClubFavoritesState.initial() => UserClubFavoritesState(
        clubs: [],
        status: CubitStatus.initial,
        currentVisibleIndex: 0,
      );
}
