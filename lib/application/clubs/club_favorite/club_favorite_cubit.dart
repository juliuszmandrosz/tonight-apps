import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/profile/profile_cubit_hub.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver_common/application/cubit_status.dart';
import 'package:raver_translations/raver_translations.dart';

part 'club_favorite_cubit.freezed.dart';
part 'club_favorite_state.dart';

class ClubFavoriteCubit extends Cubit<ClubFavoriteState> {
  final ClubFacade _clubFacade;
  final ProfileBroadcastSubject _profileBroadcastSubject;

  ClubFavoriteCubit(this._clubFacade, this._profileBroadcastSubject)
      : super(ClubFavoriteState.initial());

  Future<void> getFavoriteClubIds() async {
    _initBroadcastListener();
    emit(state.copyWith(status: CubitStatus.loading));
  }

  Future<void> toggleClubFavoriteStatus(String clubId) async {
    emit(state.copyWith(
      isChangingFavoriteStatus: true,
    ));

    final favoriteClubs = state.favoriteClubIds;
    final favoriteClubsCopy = [...state.favoriteClubIds];

    final currentStatus = favoriteClubsCopy.contains(clubId);

    currentStatus
        ? favoriteClubsCopy.remove(clubId)
        : favoriteClubsCopy.add(clubId);

    emit(state.copyWith(
      favoriteClubIds: favoriteClubsCopy,
    ));

    final failureOrSuccess = await _clubFacade.toggleClubFavoriteStatus(clubId);

    emit(state.copyWith(
      isChangingFavoriteStatus: false,
    ));

    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: some(S().errorChangingClubStatus),
            status: CubitStatus.failure,
            favoriteClubIds: favoriteClubs,
          ),
        );

        emit(
          state.copyWith(errorMessage: none()),
        );
      },
      (success) {},
    );
  }

  void _refreshIdsList(ProfileState profileState) {
    if (profileState.status == CubitStatus.success) {
      emit(state.copyWith(
          status: CubitStatus.success,
          favoriteClubIds: profileState.user.favoriteClubIds));
      return;
    }
    _emitFetchFailure();
  }

  void _initBroadcastListener() {
    _profileBroadcastSubject.getSubject().listen((profileState) {
      _refreshIdsList(profileState);
    });
  }

  void _emitFetchFailure() {
    emit(
      state.copyWith(
        errorMessage: some(S().errorLoadingFavoriteClubsInfo),
        status: CubitStatus.failure,
      ),
    );
    emit(
      state.copyWith(errorMessage: none()),
    );
  }
}
