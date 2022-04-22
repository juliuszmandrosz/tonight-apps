import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_facade.dart';
import 'package:raver/domain/clubs/failures/club_failure.dart';
import 'package:raver_common/raver_common.dart';

part 'club_photos_bloc.freezed.dart';
part 'club_photos_event.dart';
part 'club_photos_state.dart';

const pageSize = 10;

const throttleDuration = Duration(milliseconds: 500);

class ClubPhotosBloc extends Bloc<ClubPhotosEvent, ClubPhotosState> {
  final ClubFacade _clubFacade;

  ClubPhotosBloc(this._clubFacade) : super(ClubPhotosState.initial()) {
    on<_ClubPhotosFetched>(getClubPhotosUrls);
    on<_ClubPhotosNextPageFetched>(getNextPageClubPhotosUrls,
        transformer: throttleDroppable(throttleDuration));
  }

  Future<void> getClubPhotosUrls(
      _ClubPhotosFetched event, Emitter<ClubPhotosState> emit) async {
    emit(state.copyWith(status: CubitStatus.loading));

    Either<ClubFailure, Tuple2<List<String>, String?>> failureOrSuccess =
        await _clubFacade.getClubPhotosUrls(clubId: event.clubId);

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (success) => emit(
        state.copyWith(
            status: CubitStatus.success,
            photosUrls: success.value1,
            nextPageToken: success.value2),
      ),
    );
  }

  Future<void> getNextPageClubPhotosUrls(
      _ClubPhotosNextPageFetched event, Emitter<ClubPhotosState> emit) async {
    if (state.nextPageToken == null) return;

    Either<ClubFailure, Tuple2<List<String>, String?>> failureOrSuccess =
        await _clubFacade.getClubPhotosUrls(
          clubId: event.clubId,
      nextPageToken: event.nextPageToken,
      pageSize: pageSize,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (success) => emit(
        state.copyWith(
            photosUrls: List.of(state.photosUrls)..addAll(success.value1),
            nextPageToken: success.value2),
      ),
    );
  }
}
