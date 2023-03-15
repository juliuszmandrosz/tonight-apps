import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clubs/domain/domain.dart';
import 'package:clubs/clubs.dart';

part 'club_details_cubit.freezed.dart';
part 'club_details_state.dart';

class ClubDetailsCubit extends Cubit<ClubDetailsState> {
  final UserClubFacade _clubFacade;

  ClubDetailsCubit(this._clubFacade) : super(const ClubDetailsState.initial());

  Future<void> getClubById(String clubId) async {
    emit(const ClubDetailsState.loadInProgress());

    Either<UserClubFailure, Club> failureOrSuccess =
        await _clubFacade.getClubById(clubId);

    failureOrSuccess.fold(
      (failure) => emit(
        ClubDetailsState.loadFailure(failure),
      ),
      (success) => emit(
        ClubDetailsState.loadSuccess(success),
      ),
    );
  }

  void addClubToState(Club club) {
    emit(ClubDetailsState.loadSuccess(club));
  }
}
