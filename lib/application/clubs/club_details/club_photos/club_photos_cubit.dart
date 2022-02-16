import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/failures/club_failure.dart';

part 'club_photos_cubit.freezed.dart';

part 'club_photos_state.dart';

class ClubPhotosCubit extends Cubit<ClubPhotosState> {
  final ClubFacade _clubFacade;

  ClubPhotosCubit(this._clubFacade) : super(const ClubPhotosState.initial());

  Future<void> getClubPhotosUrls(String clubId) async {
    emit(const ClubPhotosState.loadInProgress());

    Either<ClubFailure, List<String>> failureOrSuccess =
        await _clubFacade.getClubPhotosUrls(clubId);

    failureOrSuccess.fold(
      (failure) => emit(
        ClubPhotosState.loadFailure(failure),
      ),
      (success) => emit(
        ClubPhotosState.loadSuccess(success),
      ),
    );
  }
}
