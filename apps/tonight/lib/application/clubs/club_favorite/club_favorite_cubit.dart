import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clubs/clubs.dart';
import 'package:common/application/cubit_status.dart';
import 'package:translations/translations.dart';

part 'club_favorite_cubit.freezed.dart';
part 'club_favorite_state.dart';

class ClubFavoriteCubit extends Cubit<ClubFavoriteState> {
  final UserClubFacade _clubFacade;

  ClubFavoriteCubit(this._clubFacade) : super(ClubFavoriteState.initial());

  Future<void> getFavoriteClubs() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _clubFacade.getFavoriteClubs();

    failureOrSuccess.fold(
      (_) => _emitFetchFailure(),
      (favoriteClubs) => emit(
        state.copyWith(
          status: CubitStatus.success,
          favoriteClubs: favoriteClubs,
        ),
      ),
    );
  }

  Future<void> toggleClubFavoriteStatus(Club club) async {
    emit(state.copyWith(isChangingFavoriteStatus: true));

    final favoriteClubs = state.favoriteClubs;
    final favoriteClubsCopy = [...state.favoriteClubs];

    final currentStatus = favoriteClubsCopy.contains(club);

    currentStatus
        ? favoriteClubsCopy.remove(club)
        : favoriteClubsCopy.add(club);

    emit(state.copyWith(favoriteClubs: favoriteClubsCopy));

    final failureOrSuccess =
        await _clubFacade.toggleClubFavoriteStatus(club.id);

    emit(state.copyWith(isChangingFavoriteStatus: false));

    failureOrSuccess.fold(
      (failure) => _emitToggleFailure(favoriteClubs),
      (success) {},
    );
  }

  void _emitToggleFailure(List<Club> previousClubs) {
    emit(
      state.copyWith(
        snackbarMessage: some(S().errorChangingClubStatus),
        status: CubitStatus.failure,
        favoriteClubs: previousClubs,
      ),
    );
    emit(
      state.copyWith(snackbarMessage: none()),
    );
  }

  void _emitFetchFailure() {
    emit(
      state.copyWith(
        snackbarMessage: some(S().errorLoadingFavoriteClubsInfo),
        status: CubitStatus.failure,
      ),
    );
    emit(
      state.copyWith(snackbarMessage: none()),
    );
  }
}
