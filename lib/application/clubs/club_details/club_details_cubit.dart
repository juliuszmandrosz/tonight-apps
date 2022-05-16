import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/failures/club_failure.dart';

part 'club_details_state.dart';

part 'club_details_cubit.freezed.dart';

class ClubDetailsCubit extends Cubit<ClubDetailsState> {
  final ClubFacade _clubFacade;

  ClubDetailsCubit(this._clubFacade) : super(const ClubDetailsState.initial());

  Future<void> getClubById(String clubId) async {
    emit(const ClubDetailsState.loadInProgress());

    Either<ClubFailure, Club> failureOrSuccess =
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
