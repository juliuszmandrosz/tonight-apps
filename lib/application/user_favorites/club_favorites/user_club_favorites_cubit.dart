import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/profile/profile_cubit_hub.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/application/application.dart';
import 'package:raver_common/application/cubit_status.dart';

part 'user_club_favorites_cubit.freezed.dart';
part 'user_club_favorites_state.dart';

//TODO implement bloc communication separation: POC on raver-common/favorites
class UserClubFavoritesCubit extends Cubit<UserClubFavoritesState> {
  final UserClubFacade _clubFacade;
  final ProfileBroadcastSubject _profileBroadcastSubject;

  UserClubFavoritesCubit(
    this._clubFacade,
    this._profileBroadcastSubject,
  ) : super(UserClubFavoritesState.initial());

  void getFavorites() async {
    _initBroadcastListener();
    emit(state.copyWith(status: CubitStatus.loading));
  }

  void changePageIndex(int index) {
    emit(state.copyWith(currentVisibleIndex: index));
  }

  Future<void> _refreshIdsList(ProfileState profileState) async {
    if (profileState.status == CubitStatus.success) {
      final clubsFromProfile = profileState.user.favoriteClubIds;
      final currentIdList = state.clubs.map((element) => element.id).toList();

      final clubIdsToBeFetched =
          _getClubsIdsDifference(currentIdList, clubsFromProfile);

      if (clubIdsToBeFetched.isEmpty) {
        final clubsToEmit =
            _clearUnnecessaryClubs(state.clubs, clubsFromProfile);
        emit(state.copyWith(status: CubitStatus.success, clubs: clubsToEmit));
        return;
      }

      final favoriteClubs = await _clubFacade.getClubsByIds(clubIdsToBeFetched);

      favoriteClubs.fold(
        (failure) => emit(
          state.copyWith(status: CubitStatus.failure),
        ),
        (clubs) => emit(
          state.copyWith(
              status: CubitStatus.success, clubs: clubs + state.clubs),
        ),
      );
    }
  }

  List<Club> _clearUnnecessaryClubs(
      List<Club> currentFavoriteClubs, List<String> clubIdsFromProfile) {
    return currentFavoriteClubs
        .where((club) => clubIdsFromProfile.contains(club.id))
        .toList();
  }

  List<String> _getClubsIdsDifference(
      List<String> previousList, List<String> currentList) {
    //remove all duplicates from new list (that comes from message)
    return currentList
        .where((idFromData) => !previousList.contains(idFromData))
        .toList();
  }

  void _initBroadcastListener() {
    _profileBroadcastSubject.getSubject().listen((profileState) {
      _refreshIdsList(profileState);
    });
  }
}
