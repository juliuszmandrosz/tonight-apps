import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/application/cubit_status.dart';
import 'package:raver_translations/raver_translations.dart';

part 'club_favorite_cubit.freezed.dart';
part 'club_favorite_state.dart';

class ClubFavoriteCubit extends Cubit<ClubFavoriteState> {
  final UserClubFacade _clubFacade;

  ClubFavoriteCubit(this._clubFacade) : super(ClubFavoriteState.initial());

  Future<void> getFavoriteClubs() async {
    // TODO - implement
    emit(state.copyWith(status: CubitStatus.success));
  }

  Future<void> toggleClubFavoriteStatus(Club club) async {
    emit(state.copyWith(
      isChangingFavoriteStatus: true,
    ));

    final favoriteClubs = state.favoriteClubs;
    final favoriteClubsCopy = [...state.favoriteClubs];

    final currentStatus = favoriteClubsCopy.contains(club);

    currentStatus
        ? favoriteClubsCopy.remove(club)
        : favoriteClubsCopy.add(club);

    emit(state.copyWith(
      favoriteClubs: favoriteClubsCopy,
    ));

    final failureOrSuccess =
        await _clubFacade.toggleClubFavoriteStatus(club.id);

    emit(state.copyWith(
      isChangingFavoriteStatus: false,
    ));

    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: some(S().errorChangingClubStatus),
            status: CubitStatus.failure,
            favoriteClubs: favoriteClubs,
          ),
        );

        emit(
          state.copyWith(errorMessage: none()),
        );
      },
      (success) {},
    );
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
